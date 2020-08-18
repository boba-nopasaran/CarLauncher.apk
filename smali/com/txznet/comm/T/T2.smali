.class public Lcom/txznet/comm/T/T2;
.super Landroid/app/Application;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/T/T2$T;
    }
.end annotation


# static fields
.field public static T:J

.field public static T2:I

.field public static T3:J

.field static T7:Landroid/content/res/Resources;

.field static TB:Ljava/lang/Object;

.field static TG:Ljava/lang/String;

.field static TJ:Z

.field public static TN:I

.field static TO:Landroid/content/pm/ApplicationInfo;

.field static TP:Ljava/lang/ClassLoader;

.field static TR:Ljava/lang/Boolean;

.field public static Te:Ljava/lang/String;

.field static Tn:Ljava/lang/String;

.field static To:Landroid/content/res/Resources$Theme;

.field static Tr:Landroid/content/res/AssetManager;

.field static Tw:Ljava/lang/String;

.field static Ty:Ljava/lang/String;


# instance fields
.field private TQ:Z

.field TW:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/32 v0, 0x2bf20

    sput-wide v0, Lcom/txznet/comm/T/T2;->T:J

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/txznet/comm/T/T2;->T3:J

    const/4 v0, 0x5

    sput v0, Lcom/txznet/comm/T/T2;->T2:I

    const/16 v0, 0xa

    sput v0, Lcom/txznet/comm/T/T2;->TN:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.txz/loader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    sput-object v2, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/txznet/comm/T/T2;->TJ:Z

    sput-object v2, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private T(Ljava/io/FileInputStream;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    array-length v2, p2

    sub-int/2addr v2, v1

    invoke-virtual {p1, p2, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    :try_start_0
    sget-object v3, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    const-string v4, "com.txznet.loader.AppLogicBase"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private T(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "TXZAppLoader1.0"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/txz/report/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/txznet/comm/T/T2$T;

    invoke-direct {v2, p0, p1, p2}, Lcom/txznet/comm/T/T2$T;-><init>(Lcom/txznet/comm/T/T2;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p0, v0, v1, v2}, Lcom/txznet/comm/T/TN;->T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private T2()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sput-object v0, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sput-object v0, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sput-object v0, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    sput-object v0, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    sput-object v0, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    sput-object v0, Lcom/txznet/comm/T/T2;->Tr:Landroid/content/res/AssetManager;

    sput-object v0, Lcom/txznet/comm/T/T2;->T7:Landroid/content/res/Resources;

    sput-object v0, Lcom/txznet/comm/T/T2;->To:Landroid/content/res/Resources$Theme;

    return-void
.end method

.method public static T2(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v3, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    const-string v4, "com.txznet.loader.AppLogicBase"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private TN(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_2
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private TN()Z
    .locals 38

    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T2()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "loader_ver"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "loader_len"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "loader_crc"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    :try_start_0
    invoke-static {}, Lcom/txznet/T/T;->T2()Ljava/lang/String;

    move-result-object v33

    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v30

    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v3, 0x64

    new-array v11, v3, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lcom/txznet/comm/T/T2;->T(Ljava/io/FileInputStream;[B)V

    invoke-virtual {v12, v11}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v26

    cmp-long v3, v28, v30

    if-nez v3, :cond_0

    cmp-long v3, v24, v26

    if-nez v3, :cond_0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v3, "loader_ver"

    move-object/from16 v0, v33

    invoke-interface {v13, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "loader_len"

    move-wide/from16 v0, v30

    invoke-interface {v13, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "loader_crc"

    move-wide/from16 v0, v26

    invoke-interface {v13, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "TXZAppLoader1.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load outter failed: not match loader config: len["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], crc["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ver["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Ty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "apk"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "TXZAppLoader1.0"

    const-string v4, "load outter failed: no outter data setting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v15, Ljava/io/File;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3

    const-string v3, "TXZAppLoader1.0"

    const-string v4, "load outter failed: partition is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    const-string v3, "launchTimes"

    invoke-interface {v14, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    invoke-static {}, Lcom/txznet/T/T;->TR()V

    const-wide/16 v4, 0xbb8

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load outter failed: check data failed - not exist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "size"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    cmp-long v3, v18, v20

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load outter failed: check data failed - length not match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v4, "time"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v36

    cmp-long v3, v34, v36

    if-eqz v3, :cond_6

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/solibs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dexfiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Lcom/txznet/T/T3;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v4, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sget-object v5, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sget-object v6, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/txznet/T/T3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_3
    const-string v3, "com.txznet.loader.ApkLoader"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v3, "process"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Application;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/ClassLoader;

    aput-object v6, v4, v5

    invoke-virtual {v8, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v10, p0

    sget-object v9, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Lcom/txznet/comm/T/T2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v9}, Lcom/txznet/comm/T/T2$1;-><init>(Lcom/txznet/comm/T/T2;Landroid/app/Application;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/txznet/comm/T/T2$1;->start()V

    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load outter failed: process failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    goto/16 :goto_1

    :catch_3
    move-exception v3

    goto/16 :goto_2
.end method

.method private Te()Z
    .locals 12

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/txznet/comm/T/T2;->T2()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dex"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/solibs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dexfiles"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v6, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sget-object v7, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v8, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sget-object v9, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sget-object v10, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/txznet/T/T3;->T(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v7

    sget-object v8, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.txznet.loader.AppLogic"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->TB:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sput-object v6, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v5, Lcom/txznet/comm/Te/T;->T:I

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/txznet/comm/Te/T;->T3:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_1
    const/4 v5, 0x1

    :goto_2
    return v5

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "com.txznet.loader.AppLogicDefault"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v6, "TXZAppLoader1.0"

    const-string v7, "load inner failed: load logic class failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v6, "TXZAppLoader1.0"

    const-string v7, "load inner failed: create logic instance failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method private Tn()V
    .locals 22

    invoke-static/range {p0 .. p0}, Lcom/txznet/comm/T3/T;->T(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v12, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ".ApkLoader"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/txznet/comm/T/T2;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v18, "WORK_SPACE"

    sget-object v19, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v18, "MIN_RUN_TIME"

    sget-wide v20, Lcom/txznet/comm/T/T2;->T3:J

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    sput-wide v18, Lcom/txznet/comm/T/T2;->T3:J

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v18, "MIN_RESET_COUNT"

    sget v19, Lcom/txznet/comm/T/T2;->T2:I

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    sput v15, Lcom/txznet/comm/T/T2;->T2:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v18, "MIN_ROLLBACK_COUNT"

    sget v19, Lcom/txznet/comm/T/T2;->TN:I

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    sput v15, Lcom/txznet/comm/T/T2;->TN:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    const-string v18, "launchTimes"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, ";"

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    array-length v15, v11

    sget v18, Lcom/txznet/comm/T/T2;->T2:I

    move/from16 v0, v18

    if-lt v15, v0, :cond_0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    array-length v15, v11

    add-int/lit8 v9, v15, -0x1

    :goto_0
    array-length v15, v11

    sget v18, Lcom/txznet/comm/T/T2;->T2:I

    sub-int v15, v15, v18

    if-lt v9, v15, :cond_0

    const-wide/16 v16, 0x0

    :try_start_0
    aget-object v15, v11, v9

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v16

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    sget-wide v20, Lcom/txznet/comm/T/T2;->T3:J

    cmp-long v15, v18, v20

    if-lez v15, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-eqz v11, :cond_1

    array-length v15, v11

    sget v18, Lcom/txznet/comm/T/T2;->TN:I

    move/from16 v0, v18

    if-lt v15, v0, :cond_1

    const/4 v4, 0x1

    array-length v15, v11

    add-int/lit8 v9, v15, -0x1

    :goto_2
    array-length v15, v11

    sget v18, Lcom/txznet/comm/T/T2;->TN:I

    sub-int v15, v15, v18

    if-lt v9, v15, :cond_1

    const-wide/16 v16, 0x0

    :try_start_1
    aget-object v15, v11, v9

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v16

    :goto_3
    cmp-long v15, v6, v16

    if-gez v15, :cond_4

    const/4 v11, 0x0

    const/4 v4, 0x0

    :cond_1
    :goto_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lcom/txznet/comm/T/T2;->TN:I

    if-nez v11, :cond_6

    const/4 v14, 0x0

    :cond_2
    :goto_5
    move v9, v14

    :goto_6
    if-lez v9, :cond_7

    array-length v15, v11

    sub-int/2addr v15, v9

    aget-object v15, v11, v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x3b

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_4
    sub-long v18, v6, v16

    sget-wide v20, Lcom/txznet/comm/T/T2;->T3:J

    cmp-long v15, v18, v20

    if-lez v15, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_6
    array-length v15, v11

    sget v18, Lcom/txznet/comm/T/T2;->TN:I

    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    array-length v14, v11

    goto :goto_5

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sget-wide v20, Lcom/txznet/comm/T/T2;->T:J

    cmp-long v15, v18, v20

    if-lez v15, :cond_c

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v15, "launchTimes"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/txznet/comm/T/T2;->TQ:Z

    if-eqz v15, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Ty()V

    :cond_9
    if-eqz v4, :cond_d

    const-string v15, "TXZAppLoader1.0"

    const-string v18, "application need rollback"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/txznet/comm/T/T2;->TW:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v15, "launchTimes"

    invoke-interface {v8, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v15, "restart too many times at few minutes"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v15, v1}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    invoke-static/range {p0 .. p0}, Lcom/txznet/comm/T2/T;->T(Landroid/content/Context;)V

    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Te()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v15

    if-eqz v15, :cond_e

    :cond_b
    :goto_9
    const-string v15, "onCreate"

    const-class v18, Landroid/app/Application;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v15, v0, v1}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :cond_c
    invoke-static {}, Lcom/txznet/T/T;->TG()V

    goto :goto_7

    :cond_d
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->TN()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_9

    :catch_0
    move-exception v5

    const-string v15, "load outer exception"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v5}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_1
    move-exception v15

    :cond_e
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->Tw()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v15

    if-nez v15, :cond_b

    :goto_a
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v18, "load application failed"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    :catch_2
    move-exception v15

    goto :goto_a

    :catch_3
    move-exception v15

    goto/16 :goto_3

    :catch_4
    move-exception v15

    goto/16 :goto_1
.end method

.method private Tw()Z
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->T2()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/txznet/comm/T/T2;->Te:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "txz.jet"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    const/16 v16, 0x1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/16 v16, 0x0

    :cond_0
    if-eqz v16, :cond_5

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v13

    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x0

    const/high16 v3, 0x100000

    :try_start_1
    new-array v9, v3, [B

    :goto_0
    invoke-virtual {v13, v9}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v3, v14}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v10

    move-object/from16 v17, v18

    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "TXZAppLoader1.0"

    const-string v4, "load assets failed: unzip assets data failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    if-eqz v17, :cond_1

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    return v3

    :cond_4
    move-object/from16 v17, v18

    :cond_5
    if-eqz v17, :cond_6

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_8
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/solibs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/dexfiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Lcom/txznet/T/T3;

    sget-object v3, Lcom/txznet/comm/T/T2;->Tw:Ljava/lang/String;

    sget-object v4, Lcom/txznet/comm/T/T2;->TG:Ljava/lang/String;

    sget-object v5, Lcom/txznet/comm/T/T2;->Ty:Ljava/lang/String;

    sget-object v6, Lcom/txznet/comm/T/T2;->Tn:Ljava/lang/String;

    invoke-super/range {p0 .. p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/txznet/T/T3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :try_start_5
    const-string v3, "com.txznet.loader.ApkLoader"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v3, "process"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Application;

    aput-object v6, v4, v5

    invoke-virtual {v8, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v15, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v3, 0x1

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    :goto_4
    if-eqz v17, :cond_9

    :try_start_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_b
    :goto_5
    throw v3

    :catch_1
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "TXZAppLoader1.0"

    const-string v4, "load assets failed: proccess assets data failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v4

    goto :goto_5

    :catchall_1
    move-exception v3

    move-object/from16 v17, v18

    goto :goto_4

    :catch_3
    move-exception v4

    goto/16 :goto_2

    :catch_4
    move-exception v10

    goto/16 :goto_1

    :catch_5
    move-exception v3

    goto/16 :goto_3
.end method

.method private Ty()V
    .locals 2

    const-string v0, "TXZAppLoader1.0"

    const-string v1, "application need reset upzip data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/solibs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dexfiles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/txznet/comm/T/T2;->TN(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public T()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/txznet/comm/T/T2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v3, :cond_0

    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public T(Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public T3()Z
    .locals 2

    sget-object v0, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->T()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/txznet/comm/T/T2;->TR:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public T3(Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T/T2;->TO:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/comm/T/T2;->TO:Landroid/content/pm/ApplicationInfo;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T/T2;->Tr:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/comm/T/T2;->Tr:Landroid/content/res/AssetManager;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/comm/T/T2;->TP:Ljava/lang/ClassLoader;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T/T2;->T7:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/comm/T/T2;->T7:Landroid/content/res/Resources;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    sget-object v0, Lcom/txznet/comm/T/T2;->To:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/txznet/comm/T/T2;->To:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "onConfigurationChanged"

    const-class v1, Landroid/content/res/Configuration;

    invoke-static {v0, v1, p1}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "TXZAppLoader1.0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin create application: main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/txznet/comm/T/T2;->T3()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/txznet/comm/T/T2;->TJ:Z

    if-eqz v0, :cond_0

    const-string v0, "TXZAppLoader1.0"

    const-string v1, "already created application"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/txznet/comm/T/T2;->TJ:Z

    invoke-direct {p0}, Lcom/txznet/comm/T/T2;->Tn()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "TXZAppLoader1.0"

    const-string v1, "application onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onLowMemory"

    invoke-static {v0}, Lcom/txznet/comm/T/T2;->T2(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    const-string v0, "TXZAppLoader1.0"

    const-string v1, "application onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "onTerminate"

    invoke-static {v0}, Lcom/txznet/comm/T/T2;->T2(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const-string v0, "onTrimMemory"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/txznet/comm/T/T2;->T(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

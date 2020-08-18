.class public Lcom/txznet/txz/util/TN;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/txz/util/TN$T;,
        Lcom/txznet/txz/util/TN$T3;
    }
.end annotation


# direct methods
.method static synthetic T(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/txznet/txz/util/TN;->T3(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static T(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    add-int v3, v1, v11

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    if-ge v4, v1, :cond_0

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v4, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sub-int v11, v4, v1

    invoke-static {p1, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v4, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of v11, p0, Ljava/util/List;

    if-eqz v11, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v7, v0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    move-object v6, v0

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v11

    :cond_2
    move-object v10, p1

    :cond_3
    return-object v10

    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public static T(Ljava/lang/String;[Lcom/txznet/txz/util/TN$T3;J)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/txznet/txz/util/TN$T3;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroid/os/HandlerThread;

    const-string v6, "checkThread"

    invoke-direct {v9, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/txznet/txz/util/TN$T;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/txznet/txz/util/TN$T;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    move-object/from16 v8, p1

    array-length v13, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v14, v8, v12

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/txznet/txz/util/TN$T3;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-wide/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lcom/txznet/txz/util/TN;->T(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)Z

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    invoke-static {}, Lcom/txznet/T/T;->TG()V

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Load app error: unzip ["

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "] files error: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    :try_start_1
    new-instance v6, Lcom/txznet/txz/util/TN$2;

    invoke-direct {v6, v3, v2, v9}, Lcom/txznet/txz/util/TN$2;-><init>(Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;Landroid/os/HandlerThread;)V

    move-wide/from16 v0, p2

    invoke-virtual {v2, v6, v0, v1}, Lcom/txznet/txz/util/TN$T;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v15
.end method

.method public static T(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 5

    if-ne p1, p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-class v3, Ldalvik/system/BaseDexClassLoader;

    const-string v4, "pathList"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "dexElements"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeLibraryPathElements"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "nativeLibraryDirectories"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "systemNativeLibraryDirectories"

    invoke-static {v2, v1, v3}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static T(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v10, "nativeLibraryDirectories"

    invoke-static {p0, v10, p1}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "systemNativeLibraryDirectories"

    invoke-static {p0, v10, p1}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v10, Ldalvik/system/BaseDexClassLoader;

    const-string v11, "pathList"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "nativeLibraryPathElements"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v1, v10, v11

    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v4, v10, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v6, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    if-ge v6, v10, :cond_1

    add-int/lit8 v10, v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v4, v10, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v9, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    const-class v10, Ldalvik/system/DexClassLoader;

    const-string v11, "mLibPaths"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    array-length v10, v7

    add-int/lit8 v10, v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    aput-object p1, v8, v10

    :goto_3
    const/4 v6, 0x0

    :goto_4
    array-length v10, v7

    if-ge v6, v10, :cond_3

    add-int/lit8 v10, v6, 0x1

    aget-object v11, v7, v6

    aput-object v11, v8, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v10

    :goto_5
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v5, p0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public static T(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    :try_start_0
    const-class v7, Ldalvik/system/BaseDexClassLoader;

    const-string v8, "pathList"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, [Ljava/io/File;

    if-eqz v7, :cond_2

    check-cast v3, [Ljava/io/File;

    move-object v0, v3

    check-cast v0, [Ljava/io/File;

    move-object v2, v0

    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [Ljava/io/File;

    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v8, v5, v7

    const/4 v4, 0x0

    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    add-int/lit8 v7, v4, 0x1

    aget-object v8, v2, v4

    aput-object v8, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v7, v3, [Ljava/lang/String;

    if-eqz v7, :cond_4

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v4, 0x0

    :goto_2
    array-length v7, v2

    if-ge v4, v7, :cond_3

    add-int/lit8 v7, v4, 0x1

    aget-object v8, v2, v4

    aput-object v8, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v6, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_4
    instance-of v7, v3, Ljava/util/List;

    if-eqz v7, :cond_1

    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/io/File;

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v2, v7, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/txznet/txz/util/TN;->T(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static T(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)Z
    .locals 18

    :try_start_0
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v3, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".chk"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v11, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v8

    const-string v13, "size"

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "size"

    invoke-virtual {v11, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v14, v12

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no need unzip new file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Lcom/txznet/txz/util/TN;->T2(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V

    const/4 v13, 0x1

    :goto_0
    return v13

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "begin unzip "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",time="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",crc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {p1 .. p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    const/high16 v13, 0x100000

    new-array v2, v13, [B

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-ltz v9, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-static {}, Lcom/txznet/T/T;->TG()V

    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load app error: unzip file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no need unzip file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Lcom/txznet/txz/util/TN;->T3(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method private static T2(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/txznet/txz/util/TN$1;

    invoke-direct {v0, p3, p0}, Lcom/txznet/txz/util/TN$1;-><init>(Ljava/lang/String;Lcom/txznet/txz/util/TN$T;)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/txznet/txz/util/TN$T;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static T3(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const-string v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v0, v4, v5

    if-eqz v0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static T3(Lcom/txznet/txz/util/TN$T;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/txznet/txz/util/TN$3;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/txznet/txz/util/TN$3;-><init>(Ljava/lang/String;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;Lcom/txznet/txz/util/TN$T;)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/txznet/txz/util/TN$T;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

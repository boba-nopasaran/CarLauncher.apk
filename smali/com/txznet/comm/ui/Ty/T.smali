.class public Lcom/txznet/comm/ui/Ty/T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/txznet/comm/ui/Ty/T$T;
    }
.end annotation


# static fields
.field public static final T:Ljava/lang/String;

.field public static T3:Ljava/lang/String;

.field private static TN:Lcom/txznet/comm/ui/Ty/T;


# instance fields
.field public T2:Z

.field private TG:Landroid/content/res/Resources;

.field private Te:Ljava/lang/String;

.field private Tn:Ldalvik/system/DexClassLoader;

.field private Tw:Lcom/txznet/comm/ui/Ty/T$T;

.field private Ty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/txznet/comm/ui/Ty/T;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Ty/T;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Ty/T;->TN:Lcom/txznet/comm/ui/Ty/T;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/txz/resource/ResHolder.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/txznet/comm/ui/Ty/T;->T:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->Te:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Ty/T;->T2:Z

    iput-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->Ty:Ljava/lang/String;

    iput-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    iput-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    return-void
.end method

.method private T(Landroid/app/Application;Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UI2.0]start loadRes path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dexfiles"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v6, Ldalvik/system/DexClassLoader;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v6, v7, v2, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    :try_start_0
    const-class v6, Landroid/content/res/AssetManager;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "addAssetPath"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/txznet/comm/ui/Ty/T;->Te:Ljava/lang/String;

    iget-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    invoke-interface {v6}, Lcom/txznet/comm/ui/Ty/T$T;->T()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UI2.0] load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dex error!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    iget-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    const-string v7, "load resource dex error!"

    invoke-interface {v6, v7}, Lcom/txznet/comm/ui/Ty/T$T;->T(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[UI2.0] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "not exist!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    iget-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    const-string v7, "UI2.0 resources file not exist!"

    invoke-interface {v6, v7}, Lcom/txznet/comm/ui/Ty/T$T;->T(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private T2()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/txznet/comm/ui/Ty/T;->T:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/txznet/comm/ui/Ty/T;->T:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/txznet/comm/ui/Ty/T;->Ty:Ljava/lang/String;

    if-eqz v4, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/txznet/comm/ui/Ty/T;->Ty:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/txznet/comm/ui/Ty/T;->Ty:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resApkPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/txznet/comm/ui/Ty/T;->Ty:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is set but file not exist!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->T2(Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v4, "/etc/txz/resource/ResHolder.apk"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "/etc/txz/resource/ResHolder.apk"

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/txz/resource/ResHolder.apk"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "/system/txz/resource/ResHolder.apk"

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/txznet/comm/ui/Ty/T;->T3:Ljava/lang/String;

    goto :goto_0
.end method

.method public static T3()Lcom/txznet/comm/ui/Ty/T;
    .locals 1

    sget-object v0, Lcom/txznet/comm/ui/Ty/T;->TN:Lcom/txznet/comm/ui/Ty/T;

    return-object v0
.end method


# virtual methods
.method public T(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    const-string v2, "com.txznet.resholder"

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UI2.0] get id failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public T(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/txznet/comm/ui/Ty/T;->T3(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public T()V
    .locals 1

    iget-object v0, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->flushLayoutCache()V

    :cond_0
    return-void
.end method

.method public T(Lcom/txznet/comm/ui/Ty/T$T;Z)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/ResHolder.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/txznet/comm/ui/Ty/T;->T3:Ljava/lang/String;

    iput-object p1, p0, Lcom/txznet/comm/ui/Ty/T;->Tw:Lcom/txznet/comm/ui/Ty/T$T;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/txznet/comm/ui/Ty/T;->T3:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/txznet/comm/ui/Ty/T;->T:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/txznet/comm/ui/Ty/T;->T2:Z

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/txznet/comm/T3/T;->T3()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    invoke-direct {p0, v2, v1, v0}, Lcom/txznet/comm/ui/Ty/T;->T(Landroid/app/Application;Landroid/content/res/Resources;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/txznet/comm/ui/Ty/T;->T2()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public T2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget-object v3, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    if-nez v3, :cond_0

    const-string v3, "mResourceClassLoader null,failed getClassInstance"

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    invoke-virtual {v3, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed getConfigInstance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public T3(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    iget-object v4, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    if-nez v4, :cond_0

    const-string v4, "mResourceClassLoader null,failed getClassInstance"

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    invoke-virtual {v4, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed getClassInstance:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TN(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v2, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    if-nez v2, :cond_0

    const-string v2, "mResourceClassLoader null,failed getClassInstance"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/txznet/comm/ui/Ty/T;->Tn:Ldalvik/system/DexClassLoader;

    invoke-virtual {v2, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed getClass:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public Te(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3

    const-string v1, "layout"

    invoke-virtual {p0, p1, v1}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed getLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Tn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v1, "string"

    invoke-virtual {p0, p1, v1}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed getString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Tw(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const-string v1, "drawable"

    invoke-virtual {p0, p1, v1}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public Ty(Ljava/lang/String;)F
    .locals 3

    const-string v1, "dimen"

    invoke-virtual {p0, p1, v1}, Lcom/txznet/comm/ui/Ty/T;->T(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/txznet/comm/ui/Ty/T;->TG:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed getDimension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->TN(Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

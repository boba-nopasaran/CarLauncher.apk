.class public Lcom/car/launchercommon/localapp/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/localapp/IconCache$1;,
        Lcom/car/launchercommon/localapp/IconCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CACHE_CAPACITY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "CarL.Launcher.IconCache"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/car/launchercommon/localapp/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/car/launchercommon/BaseApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/car/launchercommon/BaseApplication;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Lcom/car/launchercommon/BaseApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/car/launchercommon/localapp/IconCache;->mContext:Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {p1}, Lcom/car/launchercommon/BaseApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launchercommon/localapp/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/car/launchercommon/localapp/IconCache;->mIconDpi:I

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/car/launchercommon/localapp/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/car/launchercommon/localapp/IconCache$CacheEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/car/launchercommon/localapp/IconCache$CacheEntry;"
        }
    .end annotation

    iget-object v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;

    if-nez v0, :cond_2

    new-instance v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;-><init>(Lcom/car/launchercommon/localapp/IconCache$1;)V

    iget-object v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/car/launchercommon/localapp/LauncherModel;->getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz p3, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->title:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->title:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p2}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/localapp/IconCache;->mContext:Lcom/car/launchercommon/BaseApplication;

    invoke-static {v2, v3}, Lcom/car/launchercommon/localapp/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    :cond_2
    return-object v0

    :cond_3
    iget-object v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object v2, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllIcons()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;

    iget-object v4, v1, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/car/launchercommon/localapp/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1, p2}, Lcom/car/launchercommon/localapp/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    iget-object v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v2

    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/car/launchercommon/localapp/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/car/launchercommon/localapp/IconCache$CacheEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v4, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/car/launchercommon/localapp/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/car/launchercommon/localapp/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v4

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/car/launchercommon/localapp/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/car/launchercommon/localapp/IconCache$CacheEntry;

    move-result-object v1

    iget-object v3, v1, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getTitleAndIcon(Lcom/car/launchercommon/localapp/ApplicationInfo;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/car/launchercommon/localapp/ApplicationInfo;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, p2, p3}, Lcom/car/launchercommon/localapp/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Ljava/util/HashMap;)Lcom/car/launchercommon/localapp/IconCache$CacheEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v1, p1, Lcom/car/launchercommon/localapp/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1

    iget-object v0, p0, Lcom/car/launchercommon/localapp/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v1, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/car/launchercommon/localapp/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

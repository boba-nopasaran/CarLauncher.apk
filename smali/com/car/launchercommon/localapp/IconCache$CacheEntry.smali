.class Lcom/car/launchercommon/localapp/IconCache$CacheEntry;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/localapp/IconCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheEntry"
.end annotation


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/car/launchercommon/localapp/IconCache$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/IconCache$CacheEntry;-><init>()V

    return-void
.end method

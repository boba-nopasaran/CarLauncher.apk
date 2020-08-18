.class Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/car/launchercommon/localapp/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mMaxId:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, -0x1

    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-wide v4, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    :cond_0
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J
    .locals 18

    const-wide/16 v8, -0x1

    sget v13, Lcom/car/launchercommon/R$styleable;->Favorite_packageName:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v13, Lcom/car/launchercommon/R$styleable;->Favorite_className:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v11, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v13, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v13, "intent"

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "title"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "itemType"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "spanX"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "spanY"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "_id"

    invoke-virtual/range {p0 .. p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "favorites"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v13, v14, v2}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$000(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gez v13, :cond_0

    const-wide/16 v14, -0x1

    :goto_1
    return-wide v14

    :catch_0
    move-exception v10

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v11, v13, v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v5, Landroid/content/ComponentName;

    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-direct {v5, v13, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto/16 :goto_0

    :catch_1
    move-exception v6

    const-string v13, "CarL.Launcher.LauncherProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to add favorite: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-wide v14, v8

    goto :goto_1
.end method

.method private addAppWidget(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget v1, Lcom/car/launchercommon/R$styleable;->Favorite_packageName:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget v1, Lcom/car/launchercommon/R$styleable;->Favorite_className:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v14, :cond_0

    if-nez v9, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v12, 0x1

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v14, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v12, :cond_7

    sget v1, Lcom/car/launchercommon/R$styleable;->Favorite_spanX:I

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    sget v1, Lcom/car/launchercommon/R$styleable;->Favorite_spanY:I

    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p3

    const/4 v1, 0x3

    move/from16 v0, p3

    if-ne v0, v1, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    move/from16 v0, v17

    if-le v1, v0, :cond_6

    :cond_3
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/car/launchercommon/R$styleable;->Extra:[I

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const-string v1, "extra"

    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/car/launchercommon/R$styleable;->Extra_key:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget v1, Lcom/car/launchercommon/R$styleable;->Extra_value:I

    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v13, :cond_4

    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v7, v13, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catch_0
    move-exception v10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v14, v1, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    new-instance v4, Landroid/content/ComponentName;

    const/4 v1, 0x0

    aget-object v1, v15, v1

    invoke-direct {v4, v1, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v11

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Widget extras must have a key and value"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Widgets can contain only extras"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    :try_start_0
    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    const-string v5, "itemType"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "_id"

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-static {p0, p1, v5, v6, p2}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$000(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x1

    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v4, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v5, "appWidgetId"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v3

    const-string v5, "CarL.Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7

    const/4 v4, 0x2

    new-instance v3, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6

    const/4 v4, 0x1

    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v3, p2}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$000(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 7

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J
    .locals 12

    iget-object v8, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/car/launchercommon/R$styleable;->Favorite_ricon:I

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v8, Lcom/car/launchercommon/R$styleable;->Favorite_title:I

    const/4 v9, 0x0

    invoke-virtual {p3, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v7, 0x0

    :try_start_0
    sget v8, Lcom/car/launchercommon/R$styleable;->Favorite_uri:I

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v1, :cond_0

    if-nez v6, :cond_2

    :cond_0
    const-string v8, "CarL.Launcher.LauncherProvider"

    const-string v9, "Shortcut is missing title or icon resource ID"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    :cond_1
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v8, "CarL.Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Shortcut has malformed uri: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v2

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v8, "intent"

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "title"

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "itemType"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "spanX"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "spanY"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "iconType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "iconPackage"

    iget-object v9, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "iconResource"

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "favorites"

    const/4 v9, 0x0

    invoke-static {p0, p1, v8, v9, p2}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$000(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    const-wide/16 v2, -0x1

    goto/16 :goto_0
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_0

    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    if-eqz v6, :cond_1

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    const/4 v4, 0x3

    new-array v14, v4, [I

    fill-array-data v14, :array_0

    const-string v4, "itemType"

    invoke-static {v4, v14}, Lcom/car/launchercommon/localapp/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "itemType"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    :cond_0
    :goto_0
    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "appWidgetId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    const-string v4, "spanX"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/16 v4, 0x3e8

    move/from16 v0, v17

    if-ne v0, v4, :cond_4

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.alarmclock"

    const-string v6, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v16

    :try_start_3
    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Problem while allocating appWidgetIds for existing widgets"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_4
    const-string v4, "spanX"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    :cond_4
    const/16 v4, 0x3ea

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    :try_start_5
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.camera"

    const-string v6, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x3e9

    move/from16 v0, v17

    if-ne v0, v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v13, v12, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :array_0
    .array-data 4
        0x3e8
        0x3ea
        0x3e9
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 30

    const-string v26, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string v26, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v26, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    const-string v26, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v26, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v26, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v26, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v26, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v26, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    const-string v26, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v26, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v26, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    const-string v26, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const/4 v10, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_0

    new-instance v25, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    const-string v26, "_id"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v26, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "title"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "appWidgetId"

    const/16 v27, -0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v26, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v26, "displayMode"

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    add-int/lit8 v11, v10, 0x1

    aput-object v25, v20, v10

    move v10, v11

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v23, 0x0

    :try_start_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    const-string v26, "favorites"

    const/16 v27, 0x0

    aget-object v28, v20, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$000(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gez v26, :cond_1

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    return v23

    :cond_1
    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v26

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v26
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v2, v6

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v6

    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6

    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    return-wide v2
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 39

    new-instance v9, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v9, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v30, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    const-string v4, "favorites"

    invoke-static {v11, v4}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v4, 0x3

    if-ne v13, v4, :cond_1

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_5

    :cond_1
    const/4 v4, 0x1

    if-eq v13, v4, :cond_5

    const/4 v4, 0x2

    if-ne v13, v4, :cond_0

    const/16 v20, 0x0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/car/launchercommon/R$styleable;->Favorite:[I

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const-wide/16 v22, -0x64

    sget v4, Lcom/car/launchercommon/R$styleable;->Favorite_container:I

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/car/launchercommon/R$styleable;->Favorite_container:I

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    :cond_2
    sget v4, Lcom/car/launchercommon/R$styleable;->Favorite_screen:I

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    sget v4, Lcom/car/launchercommon/R$styleable;->Favorite_x:I

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    sget v4, Lcom/car/launchercommon/R$styleable;->Favorite_y:I

    invoke-virtual {v7, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const-string v4, "container"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "screen"

    move-object/from16 v0, v34

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cellX"

    move-object/from16 v0, v37

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cellY"

    move-object/from16 v0, v38

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "favorite"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v32

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_6

    const/16 v20, 0x1

    :cond_3
    :goto_1
    if-eqz v20, :cond_4

    add-int/lit8 v30, v30, 0x1

    :cond_4
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v24

    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Got exception parsing favorites."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    return v30

    :cond_6
    const/16 v20, 0x0

    goto :goto_1

    :cond_7
    :try_start_1
    const-string v4, "search"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v20

    goto :goto_1

    :cond_8
    const-string v4, "clock"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v20

    goto :goto_1

    :cond_9
    const-string v4, "appwidget"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v10, p0

    move-object/from16 v14, p1

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v10 .. v17}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;ILandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v20

    goto :goto_1

    :cond_a
    const-string v4, "shortcut"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v32

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_b

    const/16 v20, 0x1

    :goto_3
    goto :goto_1

    :cond_b
    const/16 v20, 0x0

    goto :goto_3

    :cond_c
    const-string v4, "folder"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lcom/car/launchercommon/R$styleable;->Favorite_title:I

    const/4 v5, -0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v36

    const/4 v4, -0x1

    move/from16 v0, v36

    if-eq v0, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    :goto_4
    const-string v4, "title"

    move-object/from16 v0, v35

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v26

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_11

    const/16 v20, 0x1

    :goto_5
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v25

    :cond_d
    :goto_6
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v4, 0x3

    if-ne v13, v4, :cond_e

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v25

    if-le v4, v0, :cond_14

    :cond_e
    const/4 v4, 0x2

    if-ne v13, v4, :cond_d

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/car/launchercommon/R$styleable;->Favorite:[I

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const-string v4, "container"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "favorite"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_12

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v19}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)J

    move-result-wide v32

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_f

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_7
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    :catch_1
    move-exception v24

    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Got exception parsing favorites."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_10
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/car/launchercommon/R$string;->folder_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_4

    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_12
    const-string v4, "shortcut"

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)J

    move-result-wide v32

    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-ltz v4, :cond_f

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v24

    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Got exception parsing favorites."

    move-object/from16 v0, v24

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_13
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Folders can contain only shortcuts"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-ltz v4, :cond_3

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/car/launchercommon/localapp/LauncherProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_15
    const/16 v20, 0x0

    goto/16 :goto_1
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14

    const-string v11, "CarL.Launcher.LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/car/launchercommon/localapp/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-static {v0}, Lcom/car/launchercommon/localapp/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    if-nez v9, :cond_2

    :try_start_2
    const-string v11, "CarL.Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const-string v11, "CarL.Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_3
    const-string v11, "CarL.Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_6
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    iget-object v1, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/car/launchercommon/localapp/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private setFlagToLoadDefaultWorkspaceLater()V
    .locals 5

    invoke-static {}, Lcom/car/launchercommon/BaseApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 27

    const-string v4, "itemType"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v8, 0x1

    aput v8, v5, v6

    invoke-static {v4, v5}, Lcom/car/launchercommon/localapp/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    const-string v12, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v5, "favorites"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v4

    const/4 v4, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    if-nez v13, :cond_1

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v4, "intent"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    :cond_2
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    if-eqz v22, :cond_2

    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v20

    const-string v4, "Home"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    if-eqz v25, :cond_2

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    const-string v4, "content://contacts/people/"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    new-instance v23, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v4, 0x10008000

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v4, "favorites"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v16

    :try_start_3
    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v16

    :try_start_4
    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Problem while upgrading contacts"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_2
    move-exception v15

    :try_start_5
    const-string v4, "CarL.Launcher.LauncherProvider"

    const-string v5, "Problem upgrading shortcut"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v13, :cond_5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    :cond_6
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public generateNewId()J
    .locals 4

    iget-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    iget-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mMaxId:J

    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->setFlagToLoadDefaultWorkspaceLater()V

    :cond_1
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x3

    move v1, p2

    if-ge v1, v4, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    if-ne v1, v4, :cond_0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const/4 v1, 0x4

    :cond_1
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    :cond_2
    const/4 v2, 0x7

    if-ge v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v1, 0x7

    :cond_3
    const/16 v2, 0x8

    if-ge v1, v2, :cond_4

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v1, 0x8

    :cond_4
    if-ge v1, v5, :cond_5

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    const/16 v1, 0xc

    :cond_5
    if-eq v1, v5, :cond_6

    const-string v2, "CarL.Launcher.LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "CarL.Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :catch_1
    move-exception v0

    :try_start_3
    const-string v2, "CarL.Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

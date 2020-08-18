.class public Lcom/car/launchercommon/localapp/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;,
        Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ACTION_APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE:Ljava/lang/String; = "com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE"

.field static final APPWIDGET_HOST_ID:I = 0x400

.field static final AUTHORITY:Ljava/lang/String; = "com.car.homepage.localapp"

.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DATABASE_VERSION:I = 0xc

.field static final DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED:Ljava/lang/String; = "DB_CREATED_BUT_DEFAULT_WORKSPACE_NOT_LOADED"

.field static final DEFAULT_WORKSPACE_RESOURCE_ID:Ljava/lang/String; = "DEFAULT_WORKSPACE_RESOURCE_ID"

.field static final INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION:Ljava/lang/String; = "com.android.launcher.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION"

.field private static final LOGD:Z = false

.field static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG:Ljava/lang/String; = "CarL.Launcher.LauncherProvider"


# instance fields
.field private mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.car.homepage.localapp/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/car/launchercommon/localapp/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/car/launchercommon/localapp/LauncherProvider;->dbInsertAndCheck(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/car/launchercommon/localapp/LauncherProvider;->deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V

    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-lez v0, :cond_0

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static dbInsertAndCheck(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    const-string v0, "_id"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static deleteId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lcom/car/launchercommon/localapp/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v0, v1, v3, v3}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v3, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3

    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    iget-object v5, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v2

    invoke-static {v4, v1, v5, v6, v7}, Lcom/car/launchercommon/localapp/LauncherProvider;->dbInsertAndCheck(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    array-length v4, p2

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return v1
.end method

.method public generateNewId()J
    .locals 2

    iget-object v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->generateNewId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const/4 v4, 0x0

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v5, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    iget-object v6, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v5, v1, v6, v4, p2}, Lcom/car/launchercommon/localapp/LauncherProvider;->dbInsertAndCheck(Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/car/launchercommon/BaseApplication;

    invoke-virtual {v0, p0}, Lcom/car/launchercommon/BaseApplication;->setLauncherProvider(Lcom/car/launchercommon/localapp/LauncherProvider;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    new-instance v8, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v2, v8, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v3, v8, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-virtual {p0}, Lcom/car/launchercommon/localapp/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/car/launchercommon/localapp/LauncherProvider;->mOpenHelper:Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/car/launchercommon/localapp/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/car/launchercommon/localapp/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/car/launchercommon/localapp/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return v1
.end method

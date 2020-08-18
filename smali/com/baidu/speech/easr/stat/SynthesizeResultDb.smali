.class public Lcom/baidu/speech/easr/stat/SynthesizeResultDb;
.super Ljava/lang/Object;
.source "SynthesizeResultDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "ttsdata"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_CMD_ID:Ljava/lang/String; = "cmd_id"

.field public static final KEY_CMD_TYPE:Ljava/lang/String; = "cmd_type"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "code"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final TABLE_RESULT:Ljava/lang/String; = "result"

.field private static final TABLE_RESULT_CREATE_SQL:Ljava/lang/String; = "create table result (_id integer primary key autoincrement, time text, code integer, cmd_type integer, cmd_id integer, result text);"

.field private static final TAG:Ljava/lang/String; = "SynthesizeResultDb"

.field private static mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;


# instance fields
.field private volatile isDatabaseClosed:Z

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed:Z

    iput-object p1, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/speech/easr/stat/SynthesizeResultDb;
    .locals 2

    sget-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    if-nez v0, :cond_1

    const-class v1, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    invoke-direct {v0, p0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static releaseInstance()V
    .locals 2

    sget-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    if-eqz v0, :cond_1

    const-class v1, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mSynthesizeResultDb:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addSynthesizeResult(JIIILjava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cmd_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cmd_id"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "result"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDbHelper:Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;

    invoke-virtual {v0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDbHelper:Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteSynthesizeResult(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDatabaseClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->isDatabaseClosed:Z

    return v0
.end method

.method public declared-synchronized open()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDbHelper:Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;

    iget-object v1, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;-><init>(Lcom/baidu/speech/easr/stat/SynthesizeResultDb;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDbHelper:Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;

    iget-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDbHelper:Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;

    invoke-virtual {v0}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public querySynthesizeResult()Landroid/database/Cursor;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "result"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "time"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "code"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "cmd_type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "cmd_id"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "result"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    return-object v8
.end method

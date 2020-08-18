.class Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SynthesizeResultDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/easr/stat/SynthesizeResultDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;


# direct methods
.method public constructor <init>(Lcom/baidu/speech/easr/stat/SynthesizeResultDb;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;->this$0:Lcom/baidu/speech/easr/stat/SynthesizeResultDb;

    const-string v0, "ttsdata"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table result (_id integer primary key autoincrement, time text, code integer, cmd_type integer, cmd_id integer, result text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS result"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/baidu/speech/easr/stat/SynthesizeResultDb$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

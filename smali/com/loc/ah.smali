.class public final Lcom/loc/ah;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ah$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/ab;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/loc/ah;->a:Lcom/loc/ab;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ah;->a:Lcom/loc/ab;

    invoke-interface {v0, p1}, Lcom/loc/ab;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ah;->a:Lcom/loc/ab;

    return-void
.end method

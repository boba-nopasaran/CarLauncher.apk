.class public final Lcom/loc/am;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/loc/ac;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/am;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/am;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/loc/am;->a(Landroid/content/Context;Z)Lcom/loc/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    return-void
.end method

.method private static a(Landroid/content/Context;Z)Lcom/loc/ac;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/loc/ac;

    const-class v2, Lcom/loc/aj;

    invoke-static {v2}, Lcom/loc/ac;->a(Ljava/lang/Class;)Lcom/loc/ab;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/loc/ac;-><init>(Landroid/content/Context;Lcom/loc/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    if-nez p1, :cond_0

    const-string v2, "SDKDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/loc/m;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/m;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    const-class v3, Lcom/loc/m;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/loc/ac;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/loc/m;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/loc/am;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/am;->a(Landroid/content/Context;Z)Lcom/loc/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    :cond_1
    invoke-virtual {p1}, Lcom/loc/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    const-class v2, Lcom/loc/m;

    invoke-virtual {v1, v0, v2}, Lcom/loc/ac;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    invoke-virtual {v0, p1}, Lcom/loc/ac;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SDKDB"

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/loc/am;->a:Lcom/loc/ac;

    invoke-virtual {v1, v0, p1}, Lcom/loc/ac;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

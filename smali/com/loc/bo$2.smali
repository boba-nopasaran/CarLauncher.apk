.class final Lcom/loc/bo$2;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/bo;->a(Ljava/util/List;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bo$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/bo$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v1, 0x0

    const-class v3, Lcom/loc/bo;

    monitor-enter v3

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/loc/bo$2;->a:Landroid/content/Context;

    sget-object v4, Lcom/loc/u;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x1

    const-wide/32 v6, 0x19000

    invoke-static {v4, v2, v5, v6, v7}, Lcom/loc/ba;->a(Ljava/io/File;IIJ)Lcom/loc/ba;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/ba;->b(Ljava/lang/String;)Lcom/loc/ba$a;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/loc/ba$a;->a(I)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/bo$2;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bn;

    invoke-virtual {v0}, Lcom/loc/bn;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_3
    const-string v4, "StatisticsManager"

    const-string v5, "applyStatics"

    invoke-static {v0, v4, v5}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Lcom/loc/ba;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :goto_3
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :cond_2
    :try_start_7
    invoke-virtual {v4}, Lcom/loc/ba$a;->a()V

    invoke-virtual {v2}, Lcom/loc/ba;->b()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_3
    :goto_4
    if-eqz v2, :cond_1

    :try_start_9
    invoke-virtual {v2}, Lcom/loc/ba;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Lcom/loc/ba;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_5
    :goto_7
    :try_start_d
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v1

    goto :goto_1
.end method

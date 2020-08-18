.class public final Lcom/loc/bg;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/bh;

.field private b:Lcom/loc/bj;


# direct methods
.method public constructor <init>(Lcom/loc/bj;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/bg;-><init>(Lcom/loc/bj;JJ)V

    return-void
.end method

.method private constructor <init>(Lcom/loc/bj;JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/bg;->b:Lcom/loc/bj;

    iget-object v0, p1, Lcom/loc/bj;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/loc/bh;

    iget-object v2, p0, Lcom/loc/bg;->b:Lcom/loc/bj;

    iget v2, v2, Lcom/loc/bj;->c:I

    iget-object v3, p0, Lcom/loc/bg;->b:Lcom/loc/bj;

    iget v3, v3, Lcom/loc/bj;->d:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/bh;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/bg;->a:Lcom/loc/bh;

    iget-object v0, p0, Lcom/loc/bg;->a:Lcom/loc/bh;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/loc/bh;->b(J)V

    iget-object v0, p0, Lcom/loc/bg;->a:Lcom/loc/bh;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/loc/bh;->a(J)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/loc/bj;->e:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/loc/bg$a;)V
    .locals 4

    iget-object v0, p0, Lcom/loc/bg;->a:Lcom/loc/bh;

    iget-object v1, p0, Lcom/loc/bg;->b:Lcom/loc/bj;

    invoke-virtual {v1}, Lcom/loc/bj;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bg;->b:Lcom/loc/bj;

    invoke-virtual {v2}, Lcom/loc/bj;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bg;->b:Lcom/loc/bj;

    invoke-virtual {v3}, Lcom/loc/bj;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/bh;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/bg$a;)V

    return-void
.end method

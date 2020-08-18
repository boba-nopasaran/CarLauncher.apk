.class public final Lcom/loc/m$b;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/m$b;->d:Z

    const-string v0, "standard"

    iput-object v0, p0, Lcom/loc/m$b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/m$b;->f:[Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/m$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/m$b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/m$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/loc/m$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/m$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/loc/m$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/m$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/m$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/m$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/m$b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/m$b;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/loc/m$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/m$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/loc/m$b;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/m$b;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lcom/loc/m$b;
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/m$b;->f:[Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/loc/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/j;
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/m$b;->f:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/j;

    const-string v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/loc/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/m;-><init>(Lcom/loc/m$b;B)V

    return-object v0
.end method

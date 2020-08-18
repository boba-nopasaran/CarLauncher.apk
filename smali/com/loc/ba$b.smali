.class public final Lcom/loc/ba$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/loc/ba;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/loc/ba$b;->a:[Ljava/io/InputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/ba;Ljava/lang/String;J[Ljava/io/InputStream;[JB)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/loc/ba$b;-><init>(Lcom/loc/ba;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/loc/ba$b;->a:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final close()V
    .locals 4

    iget-object v1, p0, Lcom/loc/ba$b;->a:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/loc/bd;->a(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

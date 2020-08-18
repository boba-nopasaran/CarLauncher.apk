.class public Lcom/loc/ca;
.super Ljava/lang/Object;
.source "ConfigVersionInfo.java"


# annotations
.annotation runtime Lcom/loc/ad;
    a = "b"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/loc/ae;
        a = "b1"
        b = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/ca;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/loc/ca;->a:I

    return-void
.end method

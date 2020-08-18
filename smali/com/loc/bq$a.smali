.class public Lcom/loc/bq$a;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/bp;


# direct methods
.method constructor <init>(Lcom/loc/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/bq$a;->a:Lcom/loc/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/bq$a;->a:Lcom/loc/bp;

    iput p1, v0, Lcom/loc/bp;->a:I

    return-void
.end method

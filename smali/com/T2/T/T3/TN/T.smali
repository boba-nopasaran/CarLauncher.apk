.class public Lcom/T2/T/T3/TN/T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T3/TN/T3;


# instance fields
.field protected final T:Landroid/content/Context;

.field protected final T2:I

.field protected final T3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/16 v0, 0x1388

    const/16 v1, 0x4e20

    invoke-direct {p0, p1, v0, v1}, Lcom/T2/T/T3/TN/T;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/TN/T;->T:Landroid/content/Context;

    iput p2, p0, Lcom/T2/T/T3/TN/T;->T3:I

    iput p3, p0, Lcom/T2/T/T3/TN/T;->T2:I

    return-void
.end method

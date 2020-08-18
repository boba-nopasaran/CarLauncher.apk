.class public Lcom/T2/T/T3/T3$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/T3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# instance fields
.field private T:I

.field private T2:I

.field private T3:I

.field private T7:Lcom/T2/T/T3/Tw/T;

.field private TB:Z

.field private TG:Z

.field private TJ:I

.field private TN:Landroid/graphics/drawable/Drawable;

.field private TO:Lcom/T2/T/T3/T2/T;

.field private TP:Ljava/lang/Object;

.field private TQ:Z

.field private TR:Lcom/T2/T/T3/T/T;

.field private TW:Landroid/graphics/BitmapFactory$Options;

.field private Te:Landroid/graphics/drawable/Drawable;

.field private Tn:Z

.field private To:Landroid/os/Handler;

.field private Tr:Lcom/T2/T/T3/Tw/T;

.field private Tw:Landroid/graphics/drawable/Drawable;

.field private Ty:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/T2/T/T3/T3$T;->T:I

    iput v1, p0, Lcom/T2/T/T3/T3$T;->T3:I

    iput v1, p0, Lcom/T2/T/T3/T3$T;->T2:I

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->TN:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->Te:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->Tw:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/T2/T/T3/T3$T;->Ty:Z

    iput-boolean v1, p0, Lcom/T2/T/T3/T3$T;->Tn:Z

    iput-boolean v1, p0, Lcom/T2/T/T3/T3$T;->TG:Z

    sget-object v0, Lcom/T2/T/T3/T/T;->T2:Lcom/T2/T/T3/T/T;

    iput-object v0, p0, Lcom/T2/T/T3/T3$T;->TR:Lcom/T2/T/T3/T/T;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/T2/T/T3/T3$T;->TW:Landroid/graphics/BitmapFactory$Options;

    iput v1, p0, Lcom/T2/T/T3/T3$T;->TJ:I

    iput-boolean v1, p0, Lcom/T2/T/T3/T3$T;->TB:Z

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->TP:Ljava/lang/Object;

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->Tr:Lcom/T2/T/T3/Tw/T;

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->T7:Lcom/T2/T/T3/Tw/T;

    invoke-static {}, Lcom/T2/T/T3/T;->T2()Lcom/T2/T/T3/T2/T;

    move-result-object v0

    iput-object v0, p0, Lcom/T2/T/T3/T3$T;->TO:Lcom/T2/T/T3/T2/T;

    iput-object v2, p0, Lcom/T2/T/T3/T3$T;->To:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/T2/T/T3/T3$T;->TQ:Z

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TW:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TW:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    return-void
.end method

.method static synthetic T(Lcom/T2/T/T3/T3$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/T3$T;->T:I

    return v0
.end method

.method static synthetic T2(Lcom/T2/T/T3/T3$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/T3$T;->T2:I

    return v0
.end method

.method static synthetic T3(Lcom/T2/T/T3/T3$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/T3$T;->T3:I

    return v0
.end method

.method static synthetic T7(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/Tw/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->T7:Lcom/T2/T/T3/Tw/T;

    return-object v0
.end method

.method static synthetic TB(Lcom/T2/T/T3/T3$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/T3$T;->TB:Z

    return v0
.end method

.method static synthetic TG(Lcom/T2/T/T3/T3$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/T3$T;->TG:Z

    return v0
.end method

.method static synthetic TJ(Lcom/T2/T/T3/T3$T;)I
    .locals 1

    iget v0, p0, Lcom/T2/T/T3/T3$T;->TJ:I

    return v0
.end method

.method static synthetic TN(Lcom/T2/T/T3/T3$T;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TN:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic TO(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/T2/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TO:Lcom/T2/T/T3/T2/T;

    return-object v0
.end method

.method static synthetic TP(Lcom/T2/T/T3/T3$T;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TP:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic TQ(Lcom/T2/T/T3/T3$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/T3$T;->TQ:Z

    return v0
.end method

.method static synthetic TR(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/T/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TR:Lcom/T2/T/T3/T/T;

    return-object v0
.end method

.method static synthetic TW(Lcom/T2/T/T3/T3$T;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TW:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic Te(Lcom/T2/T/T3/T3$T;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->Te:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic Tn(Lcom/T2/T/T3/T3$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/T3$T;->Tn:Z

    return v0
.end method

.method static synthetic To(Lcom/T2/T/T3/T3$T;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->To:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic Tr(Lcom/T2/T/T3/T3$T;)Lcom/T2/T/T3/Tw/T;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->Tr:Lcom/T2/T/T3/Tw/T;

    return-object v0
.end method

.method static synthetic Tw(Lcom/T2/T/T3/T3$T;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->Tw:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic Ty(Lcom/T2/T/T3/T3$T;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/T2/T/T3/T3$T;->Ty:Z

    return v0
.end method


# virtual methods
.method public T(Landroid/graphics/Bitmap$Config;)Lcom/T2/T/T3/T3$T;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmapConfig can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/T2/T/T3/T3$T;->TW:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public T(Z)Lcom/T2/T/T3/T3$T;
    .locals 0

    iput-boolean p1, p0, Lcom/T2/T/T3/T3$T;->Ty:Z

    return-object p0
.end method

.method public T()Lcom/T2/T/T3/T3;
    .locals 2

    new-instance v0, Lcom/T2/T/T3/T3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/T2/T/T3/T3;-><init>(Lcom/T2/T/T3/T3$T;Lcom/T2/T/T3/T3;)V

    return-object v0
.end method

.method public T2(Z)Lcom/T2/T/T3/T3$T;
    .locals 0

    iput-boolean p1, p0, Lcom/T2/T/T3/T3$T;->TG:Z

    return-object p0
.end method

.method public T3(Z)Lcom/T2/T/T3/T3$T;
    .locals 0

    iput-boolean p1, p0, Lcom/T2/T/T3/T3$T;->Tn:Z

    return-object p0
.end method

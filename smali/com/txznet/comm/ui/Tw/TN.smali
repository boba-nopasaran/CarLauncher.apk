.class public Lcom/txznet/comm/ui/Tw/TN;
.super Lcom/txznet/comm/ui/Tw/Ty;
.source "Proguard"

# interfaces
.implements Lcom/txznet/comm/ui/Tw/T;


# static fields
.field private static Te:Lcom/txznet/comm/ui/Tw/TN;


# instance fields
.field private TB:Lcom/txznet/comm/ui/Tw$T;

.field private TG:Z

.field private TJ:Lcom/txznet/comm/ui/T2$T;

.field private TR:Z

.field private TW:Lcom/txznet/comm/ui/T3$T;

.field private Tn:Ljava/lang/Float;

.field private Tw:Lcom/txznet/comm/ui/Te/T2;

.field private Ty:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/Ty;-><init>()V

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->Ty:Z

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tn:Ljava/lang/Float;

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TG:Z

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/TN$2;-><init>(Lcom/txznet/comm/ui/Tw/TN;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TW:Lcom/txznet/comm/ui/T3$T;

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN$3;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/TN$3;-><init>(Lcom/txznet/comm/ui/Tw/TN;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TJ:Lcom/txznet/comm/ui/T2$T;

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TB:Lcom/txznet/comm/ui/Tw$T;

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/TN;->Te()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/txznet/comm/ui/Tw/Ty;-><init>(ZZ)V

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Ty:Z

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->Tn:Ljava/lang/Float;

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TG:Z

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN$2;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/TN$2;-><init>(Lcom/txznet/comm/ui/Tw/TN;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TW:Lcom/txznet/comm/ui/T3$T;

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN$3;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/TN$3;-><init>(Lcom/txznet/comm/ui/Tw/TN;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TJ:Lcom/txznet/comm/ui/T2$T;

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->TB:Lcom/txznet/comm/ui/Tw$T;

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/TN;->Te()V

    return-void
.end method

.method static synthetic T(Lcom/txznet/comm/ui/Tw/TN;)V
    .locals 0

    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/TG;->dismiss()V

    return-void
.end method

.method public static T3()Lcom/txznet/comm/ui/Tw/TN;
    .locals 2

    sget-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    if-nez v0, :cond_1

    const-class v1, Lcom/txznet/comm/ui/Tw/TN;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    if-nez v0, :cond_0

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN;

    invoke-direct {v0}, Lcom/txznet/comm/ui/Tw/TN;-><init>()V

    sput-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic T3(Lcom/txznet/comm/ui/Tw/TN;)V
    .locals 0

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/TN;->Ty()V

    return-void
.end method

.method private Te()V
    .locals 3

    const/16 v2, 0x400

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10000040

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN$1;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/TN$1;-><init>(Lcom/txznet/comm/ui/Tw/TN;)V

    invoke-virtual {p0, v0}, Lcom/txznet/comm/ui/Tw/TN;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/txznet/comm/TN/T3;

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/txznet/comm/TN/T3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TN:Lcom/txznet/comm/TN/T3;

    return-void
.end method

.method private Tw()V
    .locals 0

    return-void
.end method

.method private Ty()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Te/T2;->T()V

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw;->T2()V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TW:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T3;->unregisterObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TJ:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T2;->unregisterObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TB:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TB:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw;->unregisterObserver(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TG:Z

    :cond_1
    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T2/T/T3/T2;->T3()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T2/T/T3/T2;->TN()V

    invoke-static {}, Lcom/T2/T/T3/T2;->T()Lcom/T2/T/T3/T2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/T2/T/T3/T2;->T2()V

    :cond_2
    invoke-static {}, Lcom/txznet/comm/ui/TG/T3;->T()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method protected varargs T([Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T/Tw;->TN()V

    invoke-static {}, Lcom/txznet/comm/ui/Te/T/Tw;->Te()Lcom/txznet/comm/ui/Te/T/Tw;

    move-result-object v1

    iput-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/T2;->T2()Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public T()V
    .locals 3

    const/4 v2, -0x1

    const-string v1, "[UI2.0] init recordwin2"

    invoke-static {v1}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T;->T(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "dialog_bg"

    invoke-static {v2}, Lcom/txznet/comm/ui/TG/T3;->T2(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tn:Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tn:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/txznet/comm/ui/Tw/TN;->Ty:Z

    return-void
.end method

.method public T(Lcom/txznet/comm/ui/Te/T2;)V
    .locals 5

    const/4 v4, -0x1

    const-string v2, "[UI2.0] update winLayout"

    invoke-static {v2}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->Tw:Lcom/txznet/comm/ui/Te/T2;

    invoke-virtual {v2}, Lcom/txznet/comm/ui/Te/T2;->T2()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-boolean v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T3:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    const/16 v3, 0x504

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/txznet/comm/ui/Tw/TN;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "dialog_bg"

    invoke-static {v3}, Lcom/txznet/comm/ui/TG/T3;->T2(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public T(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->T3:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsFullScreenDialog:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN;

    invoke-direct {v0, p1}, Lcom/txznet/comm/ui/Tw/TN;-><init>(Z)V

    sput-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    sget-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    invoke-static {}, Lcom/txznet/comm/ui/Te/TN;->T()Lcom/txznet/comm/ui/Te/TN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Te/TN;->Ty()Lcom/txznet/comm/ui/Te/T2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw/TN;->T(Lcom/txznet/comm/ui/Te/T2;)V

    sget-object v0, Lcom/txznet/comm/ui/Tw/TN;->Te:Lcom/txznet/comm/ui/Tw/TN;

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw/TN;->T()V

    goto :goto_0
.end method

.method protected T2()V
    .locals 1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/ui/Tw;->T3()V

    return-void
.end method

.method protected TN()V
    .locals 4

    const/4 v3, -0x1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/txznet/comm/ui/Tw;->T()V

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/txznet/comm/ui/Tw/TN;->T3:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    const/16 v2, 0x504

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "RecordWin2 dismiss"

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/T3/T/T;->Te()V

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T3()V

    iput-boolean v3, p0, Lcom/txznet/comm/ui/Tw/TN;->TR:Z

    :cond_0
    invoke-static {}, Lcom/txznet/comm/T3/T2;->T3()Lcom/txznet/comm/T3/T2;

    move-result-object v0

    const-string v1, "com.txznet.txz"

    const-string v2, "txz.record.ui.event.dismiss"

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/txznet/comm/T3/T2;->T(Ljava/lang/String;Ljava/lang/String;[BLcom/txznet/comm/T3/T2$T3;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/txznet/comm/ui/Tw/TN$4;

    invoke-direct {v0, p0}, Lcom/txznet/comm/ui/Tw/TN$4;-><init>(Lcom/txznet/comm/ui/Tw/TN;)V

    invoke-static {v0, v3}, Lcom/txznet/comm/ui/TN;->T(Ljava/lang/Runnable;I)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/Ty;->dismiss()V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/TN;->Ty()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    invoke-static {}, Lcom/txznet/comm/ui/Tw/Te;->T3()Lcom/txznet/comm/ui/Tw/Te;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/txznet/comm/ui/Tw/Te;->T(I)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->Ty:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecordWin2 show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->T:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TG:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/txznet/comm/ui/Tw/TN;->TG:Z

    invoke-static {}, Lcom/txznet/comm/ui/T;->T()Lcom/txznet/comm/ui/T3;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TW:Lcom/txznet/comm/ui/T3$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T3;->registerObserver(Ljava/lang/Object;)V

    invoke-static {}, Lcom/txznet/comm/ui/T;->T3()Lcom/txznet/comm/ui/T2;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TJ:Lcom/txznet/comm/ui/T2$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/T2;->registerObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TB:Lcom/txznet/comm/ui/Tw$T;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/txznet/comm/ui/T;->T2()Lcom/txznet/comm/ui/Tw;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/ui/Tw/TN;->TB:Lcom/txznet/comm/ui/Tw$T;

    invoke-virtual {v0, v1}, Lcom/txznet/comm/ui/Tw;->registerObserver(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TR:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/txznet/comm/ui/Tw/TN;->TN:Lcom/txznet/comm/TN/T3;

    invoke-virtual {v0}, Lcom/txznet/comm/TN/T3;->T()V

    iput-boolean v2, p0, Lcom/txznet/comm/ui/Tw/TN;->TR:Z

    :cond_2
    invoke-virtual {p0}, Lcom/txznet/comm/ui/Tw/TN;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/ui/TG/T;->Te(Landroid/view/View;)V

    invoke-super {p0}, Lcom/txznet/comm/ui/Tw/Ty;->show()V

    invoke-direct {p0}, Lcom/txznet/comm/ui/Tw/TN;->Tw()V

    goto :goto_0
.end method

.class public Lcom/txznet/comm/T/T3;
.super Lcom/txznet/comm/T/Te;
.source "Proguard"


# instance fields
.field private T:Z

.field private T3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/txznet/comm/T/Te;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/txznet/comm/T/T3;->T:Z

    return-void
.end method

.method public static T2()Z
    .locals 2

    const-string v0, "REL"

    const-string v1, "REL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private TN()V
    .locals 9

    :try_start_0
    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string v4, "\u672a\u77e5\u7248\u672c"

    const-string v6, "DEV"

    const-string v7, "REL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "\u5f00\u53d1\u7248\u672c"

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u6b64\u7248\u672c\u4e3a"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v2, :cond_3

    const-string v6, ""

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    const-string v7, "#ccffffff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->measure(II)V

    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x28

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v6, 0x1

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v6, 0x33

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v6, 0xa

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    const/16 v6, 0xa

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-interface {v6, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_2
    :try_start_1
    const-string v6, "NEW"

    const-string v7, "REL"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "\u6f14\u793a\u7248\u672c"

    goto/16 :goto_1

    :cond_3
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public T()V
    .locals 0

    return-void
.end method

.method public T3()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/txznet/comm/T/TN;->T()Lcom/txznet/comm/T/TN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/txznet/comm/T/TN;->T3()V

    invoke-super {p0, p1}, Lcom/txznet/comm/T/Te;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 6

    invoke-static {}, Lcom/txznet/T/T;->T()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mResources"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-super {p0}, Lcom/txznet/comm/T/Te;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/T/T3;->T3:Landroid/widget/TextView;

    :cond_0
    invoke-super {p0}, Lcom/txznet/comm/T/Te;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/txznet/comm/T/Te;->onResume()V

    invoke-static {}, Lcom/txznet/comm/T/T3;->T2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/txznet/comm/T/T3;->TN()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onWindowFocusChanged: from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/txznet/comm/T/T3;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/comm/T3/T/Te;->T(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/txznet/comm/T/T3;->T:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/txznet/comm/T/T3;->T:Z

    iget-boolean v0, p0, Lcom/txznet/comm/T/T3;->T:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->T()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/txznet/comm/T/Te;->onWindowFocusChanged(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/txznet/comm/T/T3;->T3()V

    goto :goto_0
.end method

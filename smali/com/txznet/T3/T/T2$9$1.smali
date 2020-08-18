.class Lcom/txznet/T3/T/T2$9$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/T2$9;->onConfigChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Ljava/lang/String;

.field final synthetic T3:Lcom/txznet/T3/T/T2$9;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/T2$9;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iput-object p2, p0, Lcom/txznet/T3/T/T2$9$1;->T:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T:Ljava/lang/String;

    invoke-direct {v1, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/txznet/comm/T3/T/T3;->T2(Lorg/json/JSONObject;)Ljava/lang/Float;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v10, v11}, Lcom/txznet/T3/T/T2;->T(Lcom/txznet/T3/T/T2;F)V

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v10}, Lcom/txznet/T3/T/T2;->Tw(Lcom/txznet/T3/T/T2;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v11, v11, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    iget-object v11, v11, Lcom/txznet/T3/T/T2;->T2:[Ljava/lang/String;

    iget-object v12, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v12, v12, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v12}, Lcom/txznet/T3/T/T2;->Te(Lcom/txznet/T3/T/T2;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {v1}, Lcom/txznet/comm/T3/T/T3;->TN(Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v10, v6}, Lcom/txznet/T3/T/T2;->T(Lcom/txznet/T3/T/T2;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v10}, Lcom/txznet/T3/T/T2;->Tn(Lcom/txznet/T3/T/T2;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v11, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v11, v11, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    iget-object v11, v11, Lcom/txznet/T3/T/T2;->Te:[Ljava/lang/String;

    iget-object v12, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v12, v12, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v12}, Lcom/txznet/T3/T/T2;->Ty(Lcom/txznet/T3/T/T2;)I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {v1}, Lcom/txznet/comm/T3/T/T3;->Tw(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    sget-object v10, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    if-eqz v10, :cond_3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sput-object v7, Lcom/txznet/T3/T/T;->T3:Ljava/util/ArrayList;

    sget-object v10, Lcom/txznet/T3/T/T;->T:Lcom/txznet/T3/T/TN;

    invoke-virtual {v10}, Lcom/txznet/T3/T/TN;->notifyDataSetChanged()V

    :cond_3
    invoke-static {v1}, Lcom/txznet/comm/T3/T/T3;->Te(Lorg/json/JSONObject;)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v10}, Lcom/txznet/T3/T/T2;->T2(Lcom/txznet/T3/T/T2;)Lcom/txznet/comm/ui/view/CheckedImageView;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/txznet/comm/ui/view/CheckedImageView;->setChecked(Z)V

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Ty()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/txznet/comm/T3/T/T3;->Ty()Ljava/lang/String;

    move-result-object v10

    const-string v11, "FLOAT_NONE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v10}, Lcom/txznet/T3/T/T2;->TN(Lcom/txznet/T3/T/T2;)Lcom/txznet/comm/ui/view/CheckedImageView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/txznet/comm/ui/view/CheckedImageView;->setChecked(Z)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v10, p0, Lcom/txznet/T3/T/T2$9$1;->T3:Lcom/txznet/T3/T/T2$9;

    iget-object v10, v10, Lcom/txznet/T3/T/T2$9;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v10}, Lcom/txznet/T3/T/T2;->TN(Lcom/txznet/T3/T/T2;)Lcom/txznet/comm/ui/view/CheckedImageView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/txznet/comm/ui/view/CheckedImageView;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    goto :goto_1
.end method

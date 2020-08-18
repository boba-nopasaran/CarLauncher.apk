.class Lcom/baidu/voicerecognition/android/ui/TipsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TipsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private ITEM_FORMAT:Ljava/lang/String;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const-string v0, "%1$d.\"%2$s\""

    iput-object v0, p0, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->ITEM_FORMAT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "bdspeech_suggestion_item"

    const-string v7, "layout"

    invoke-virtual {p0}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    :try_start_0
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v0, v3

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    :goto_1
    iget v4, p0, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->mTextColor:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->ITEM_FORMAT:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v4, "textView"

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "ArrayAdapter"

    const-string v5, "You must supply a resource ID for a TextView"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "ArrayAdapter requires the resource ID to be a TextView"

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/voicerecognition/android/ui/TipsAdapter;->mTextColor:I

    return-void
.end method

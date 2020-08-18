.class public Lcom/txznet/comm/ui/TG/T2;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static T()Landroid/view/animation/AnimationSet;
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v9, 0x12c

    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v4, v9

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, 0x3f666666    # 0.9f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    int-to-long v2, v9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v10
.end method

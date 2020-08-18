.class public Lcn/yunzhisheng/common/Scene;
.super Ljava/lang/Object;


# static fields
.field public static final SCENE_DISABLED:I = -0x1


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/common/Scene;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcn/yunzhisheng/common/Scene;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcn/yunzhisheng/common/Scene;->b:Ljava/lang/String;

    iput p1, p0, Lcn/yunzhisheng/common/Scene;->a:I

    iput-object p2, p0, Lcn/yunzhisheng/common/Scene;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/common/Scene;->b:Ljava/lang/String;

    return-void
.end method

.method public getSceneId()I
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/common/Scene;->a:I

    return v0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/common/Scene;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/common/Scene;->c:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yunzhisheng/common/Scene;->c:Z

    return-void
.end method

.method public setScene(Lcn/yunzhisheng/common/Scene;)V
    .locals 1

    iget v0, p1, Lcn/yunzhisheng/common/Scene;->a:I

    iput v0, p0, Lcn/yunzhisheng/common/Scene;->a:I

    iget-object v0, p1, Lcn/yunzhisheng/common/Scene;->b:Ljava/lang/String;

    iput-object v0, p0, Lcn/yunzhisheng/common/Scene;->b:Ljava/lang/String;

    iget-boolean v0, p1, Lcn/yunzhisheng/common/Scene;->c:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/common/Scene;->c:Z

    return-void
.end method

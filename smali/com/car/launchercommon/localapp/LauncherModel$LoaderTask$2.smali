.class Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;->filterCurrentWorkspaceItems(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/car/launchercommon/localapp/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$2;->this$1:Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/car/launchercommon/localapp/ItemInfo;Lcom/car/launchercommon/localapp/ItemInfo;)I
    .locals 4

    iget-wide v0, p1, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    iget-wide v2, p2, Lcom/car/launchercommon/localapp/ItemInfo;->container:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/car/launchercommon/localapp/ItemInfo;

    check-cast p2, Lcom/car/launchercommon/localapp/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/car/launchercommon/localapp/LauncherModel$LoaderTask$2;->compare(Lcom/car/launchercommon/localapp/ItemInfo;Lcom/car/launchercommon/localapp/ItemInfo;)I

    move-result v0

    return v0
.end method

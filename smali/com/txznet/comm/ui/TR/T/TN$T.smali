.class public Lcom/txznet/comm/ui/TR/T/TN$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/comm/ui/TR/T/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# instance fields
.field public T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public T2:Ljava/lang/String;

.field public T3:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/txznet/comm/ui/TR/T/TN$T;->T3:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/txznet/comm/ui/TR/T/TN$T;->T2:Ljava/lang/String;

    return-void
.end method

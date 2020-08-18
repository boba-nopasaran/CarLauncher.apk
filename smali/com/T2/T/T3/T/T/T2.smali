.class public Lcom/T2/T/T3/T/T/T2;
.super Lcom/T2/T/T3/T/T/TN;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/T2/T/T3/T/T/TN",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/T2/T/T3/T/T/TN;-><init>()V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/T2/T/T3/T/T/TN;->T3(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-super {p0}, Lcom/T2/T/T3/T/T/TN;->T()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

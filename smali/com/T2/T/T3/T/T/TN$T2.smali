.class final Lcom/T2/T/T3/T/T/TN$T2;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/T/T/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "T2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field T:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field T2:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field

.field T3:Lcom/T2/T/T3/T/T/TN$T2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/T2/T/T3/T/T/TN$T2",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T2/T/T3/T/T/TN$T2;->T:Ljava/lang/Object;

    return-void
.end method

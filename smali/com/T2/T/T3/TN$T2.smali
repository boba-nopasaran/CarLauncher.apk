.class Lcom/T2/T/T3/TN$T2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/T2/T/T3/TN/T3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T2/T/T3/TN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T2"
.end annotation


# instance fields
.field private final T:Lcom/T2/T/T3/TN/T3;


# direct methods
.method public constructor <init>(Lcom/T2/T/T3/TN/T3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T2/T/T3/TN$T2;->T:Lcom/T2/T/T3/TN/T3;

    return-void
.end method

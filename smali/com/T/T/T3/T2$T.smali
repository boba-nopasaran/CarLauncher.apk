.class public Lcom/T/T/T3/T2$T;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/T/T/T3/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# instance fields
.field private final T:Lcom/T/T/T3/TR;

.field private T2:Lcom/T/T/T3/T/T0;

.field private final T3:Ljava/lang/String;

.field private TN:Lcom/T/T/T3/TR;


# direct methods
.method public constructor <init>(Lcom/T/T/T3/TR;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/T/T/T3/T2$T;->T:Lcom/T/T/T3/TR;

    iput-object p2, p0, Lcom/T/T/T3/T2$T;->T3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public T()Lcom/T/T/T3/TR;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2$T;->T:Lcom/T/T/T3/TR;

    return-object v0
.end method

.method public T(Lcom/T/T/T3/T/T0;)V
    .locals 0

    iput-object p1, p0, Lcom/T/T/T3/T2$T;->T2:Lcom/T/T/T3/T/T0;

    return-void
.end method

.method public T(Lcom/T/T/T3/TR;)V
    .locals 0

    iput-object p1, p0, Lcom/T/T/T3/T2$T;->TN:Lcom/T/T/T3/TR;

    return-void
.end method

.method public T2()Lcom/T/T/T3/T/T0;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2$T;->T2:Lcom/T/T/T3/T/T0;

    return-object v0
.end method

.method public T3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2$T;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public TN()Lcom/T/T/T3/TR;
    .locals 1

    iget-object v0, p0, Lcom/T/T/T3/T2$T;->TN:Lcom/T/T/T3/TR;

    return-object v0
.end method

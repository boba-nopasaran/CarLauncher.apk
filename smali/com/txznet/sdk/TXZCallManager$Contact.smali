.class public Lcom/txznet/sdk/TXZCallManager$Contact;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/sdk/TXZCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# instance fields
.field protected T:Ljava/lang/String;

.field protected T2:J

.field protected T3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastTimeContacted()J
    .locals 2

    iget-wide v0, p0, Lcom/txznet/sdk/TXZCallManager$Contact;->T2:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/txznet/sdk/TXZCallManager$Contact;->T3:Ljava/lang/String;

    return-object v0
.end method

.method public setLastTimeContacted(J)V
    .locals 1

    iput-wide p1, p0, Lcom/txznet/sdk/TXZCallManager$Contact;->T2:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager$Contact;->T:Ljava/lang/String;

    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/sdk/TXZCallManager$Contact;->T3:Ljava/lang/String;

    return-void
.end method

.class Lcom/txznet/T3/T/T2$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/txznet/T3/T/T2;->Ty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic T:Lcom/txznet/T3/T/T2;


# direct methods
.method constructor <init>(Lcom/txznet/T3/T/T2;)V
    .locals 0

    iput-object p1, p0, Lcom/txznet/T3/T/T2$2;->T:Lcom/txznet/T3/T/T2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/txznet/T3/T/T2$2;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v1, p2}, Lcom/txznet/T3/T/T2;->T3(Lcom/txznet/T3/T/T2;I)I

    iget-object v1, p0, Lcom/txznet/T3/T/T2$2;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v1}, Lcom/txznet/T3/T/T2;->Tw(Lcom/txznet/T3/T/T2;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/txznet/T3/T/T2$2;->T:Lcom/txznet/T3/T/T2;

    iget-object v2, v2, Lcom/txznet/T3/T/T2;->T2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/txznet/T3/T/T2$2;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v3}, Lcom/txznet/T3/T/T2;->Te(Lcom/txznet/T3/T/T2;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/txznet/T3/T/T2$2;->T:Lcom/txznet/T3/T/T2;

    invoke-static {v1}, Lcom/txznet/T3/T/T2;->Te(Lcom/txznet/T3/T/T2;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Lcom/txznet/sdk/TXZConfigManager;->getInstance()Lcom/txznet/sdk/TXZConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/txznet/sdk/TXZConfigManager;->setWakeupThreshhold(F)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    const/high16 v0, -0x3fa00000    # -3.5f

    goto :goto_0

    :pswitch_1
    const v0, -0x3faccccd    # -3.3f

    goto :goto_0

    :pswitch_2
    const v0, -0x3fb9999a    # -3.1f

    goto :goto_0

    :pswitch_3
    const v0, -0x3fc66666    # -2.9f

    goto :goto_0

    :pswitch_4
    const v0, -0x3fd33333    # -2.7f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.class public Lcom/txznet/txz/util/recordcenter/T/T$T;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/txznet/txz/util/recordcenter/T/T;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/txznet/txz/util/recordcenter/T/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T"
.end annotation


# instance fields
.field private T:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/txznet/txz/util/recordcenter/T/T$T;->T:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public T([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/txznet/txz/util/recordcenter/T/T$T;->T:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return p3
.end method

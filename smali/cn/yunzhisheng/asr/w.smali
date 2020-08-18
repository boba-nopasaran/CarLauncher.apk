.class public Lcn/yunzhisheng/asr/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "1.3.29"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "1.3.29"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

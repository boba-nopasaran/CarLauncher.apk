.class public interface abstract Lcom/baidu/speech/Console$Session;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Session"
.end annotation


# virtual methods
.method public abstract cancel(Z)V
.end method

.method public abstract msg()Lcom/baidu/speech/Console$Msg;
.end method

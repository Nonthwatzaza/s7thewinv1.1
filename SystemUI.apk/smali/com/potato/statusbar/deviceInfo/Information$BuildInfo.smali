.class public Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;
.super Landroid/widget/TextView;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuildInfo"
.end annotation


# instance fields
.field private mAttached:Z

.field mColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/potato/statusbar/deviceInfo/Information;


# direct methods
.method public constructor <init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->this$0:Lcom/potato/statusbar/deviceInfo/Information;

    .line 311
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 331
    new-instance v0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo$1;

    invoke-direct {v0, p0}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo$1;-><init>(Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;)V

    iput-object v0, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 319
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 320
    iget-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->mAttached:Z

    if-nez v1, :cond_0

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->mAttached:Z

    .line 322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 328
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 329
    return-void
.end method

.method public setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dev_color"

    const/4 v2, 0x0

    .line 346
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/statusbar/deviceInfo/Information$BuildInfo;->mColor:I

    .line 351
    return-void
.end method

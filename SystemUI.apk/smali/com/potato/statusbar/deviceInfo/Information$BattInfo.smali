.class public Lcom/potato/statusbar/deviceInfo/Information$BattInfo;
.super Landroid/widget/TextView;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BattInfo"
.end annotation


# instance fields
.field level:I

.field private mAttached:Z

.field mColor:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/potato/statusbar/deviceInfo/Information;


# direct methods
.method public constructor <init>(Lcom/potato/statusbar/deviceInfo/Information;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->this$0:Lcom/potato/statusbar/deviceInfo/Information;

    .line 360
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 381
    new-instance v0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo$1;

    invoke-direct {v0, p0}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo$1;-><init>(Lcom/potato/statusbar/deviceInfo/Information$BattInfo;)V

    iput-object v0, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 368
    iget-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->mAttached:Z

    if-nez v1, :cond_0

    .line 369
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->mAttached:Z

    .line 370
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 372
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 378
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 379
    return-void
.end method

.method public setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 402
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dev_color"

    const/4 v3, 0x0

    .line 401
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->mColor:I

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->level:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/potato/statusbar/deviceInfo/Information$BattInfo;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.class public Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;
.super Landroid/widget/TextView;
.source "Information.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/statusbar/deviceInfo/Information;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpTimeInfo"
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
    .line 416
    iput-object p1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->this$0:Lcom/potato/statusbar/deviceInfo/Information;

    .line 417
    invoke-direct {p0, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 438
    new-instance v0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;

    invoke-direct {v0, p0}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo$1;-><init>(Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;)V

    iput-object v0, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 481
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 482
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 483
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 485
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "h "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 488
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 489
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 425
    iget-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mAttached:Z

    if-nez v1, :cond_0

    .line 426
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mAttached:Z

    .line 427
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.potato.updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 435
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 436
    return-void
.end method

.method public setDown(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 455
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 459
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dev_color"

    const/4 v7, 0x0

    .line 458
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->mColor:I

    .line 462
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    div-long v0, v5, v8

    .line 463
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    div-long v3, v5, v8

    .line 465
    .local v3, "ut":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 466
    const-wide/16 v3, 0x1

    .line 469
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/potato/statusbar/deviceInfo/Information$UpTimeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method

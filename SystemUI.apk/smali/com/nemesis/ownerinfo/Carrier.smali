.class public Lcom/nemesis/ownerinfo/Carrier;
.super Landroid/widget/ImageView;
.source "Carrier.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/nemesis/ownerinfo/Carrier$1;

    invoke-direct {v0, p0}, Lcom/nemesis/ownerinfo/Carrier$1;-><init>(Lcom/nemesis/ownerinfo/Carrier;)V

    iput-object v0, p0, Lcom/nemesis/ownerinfo/Carrier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 20
    iput-object p1, p0, Lcom/nemesis/ownerinfo/Carrier;->context:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/nemesis/ownerinfo/Carrier$1;

    invoke-direct {v0, p0}, Lcom/nemesis/ownerinfo/Carrier$1;-><init>(Lcom/nemesis/ownerinfo/Carrier;)V

    iput-object v0, p0, Lcom/nemesis/ownerinfo/Carrier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    iput-object p1, p0, Lcom/nemesis/ownerinfo/Carrier;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 33
    iget-boolean v1, p0, Lcom/nemesis/ownerinfo/Carrier;->mAttached:Z

    if-nez v1, :cond_0

    .line 34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemesis/ownerinfo/Carrier;->mAttached:Z

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/nemesis/ownerinfo/NamePlate;->UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/Carrier;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nemesis/ownerinfo/Carrier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/Carrier;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 37
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 41
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/Carrier;->updateCarrier()V

    .line 43
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 48
    iget-boolean v0, p0, Lcom/nemesis/ownerinfo/Carrier;->mAttached:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/Carrier;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nemesis/ownerinfo/Carrier;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemesis/ownerinfo/Carrier;->mAttached:Z

    .line 52
    :cond_0
    return-void
.end method

.method protected updateCarrier()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0, v5}, Lcom/nemesis/ownerinfo/Carrier;->setImageURI(Landroid/net/Uri;)V

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    iget-object v2, p0, Lcom/nemesis/ownerinfo/Carrier;->context:Landroid/content/Context;

    sget-object v3, Lcom/nemesis/ownerinfo/NamePlate;->PACK:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_0
    sget-object v2, Lcom/nemesis/ownerinfo/NamePlate;->PREF:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 74
    .local v1, "p":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/nemesis/ownerinfo/NamePlate;->CARRIER_KEY:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    sget-object v2, Lcom/nemesis/ownerinfo/NamePlate;->CARRIER_KEY:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nemesis/ownerinfo/Carrier;->setImageURI(Landroid/net/Uri;)V

    .line 77
    :cond_0
    const/4 v1, 0x0

    .line 78
    return-void

    .line 70
    .end local v1    # "p":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

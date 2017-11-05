.class public Lcom/nemesis/ownerinfo/NamePlate;
.super Landroid/widget/TextView;
.source "NamePlate.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation


# static fields
.field public static CARRIER_KEY:Ljava/lang/String;

.field public static PACK:Ljava/lang/String;

.field public static PLATE_KEY:Ljava/lang/String;

.field public static PREF:Ljava/lang/String;

.field public static UPDATE:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "com.nemesis.ownerinfo"

    sput-object v0, Lcom/nemesis/ownerinfo/NamePlate;->PACK:Ljava/lang/String;

    .line 16
    const-string v0, "dcsms.UPDATENAMEPLATE"

    sput-object v0, Lcom/nemesis/ownerinfo/NamePlate;->UPDATE:Ljava/lang/String;

    .line 17
    const-string v0, "my_plate"

    sput-object v0, Lcom/nemesis/ownerinfo/NamePlate;->PREF:Ljava/lang/String;

    .line 18
    const-string v0, "name"

    sput-object v0, Lcom/nemesis/ownerinfo/NamePlate;->PLATE_KEY:Ljava/lang/String;

    .line 19
    const-string v0, "png"

    sput-object v0, Lcom/nemesis/ownerinfo/NamePlate;->CARRIER_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Lcom/nemesis/ownerinfo/NamePlate$1;

    invoke-direct {v0, p0}, Lcom/nemesis/ownerinfo/NamePlate$1;-><init>(Lcom/nemesis/ownerinfo/NamePlate;)V

    iput-object v0, p0, Lcom/nemesis/ownerinfo/NamePlate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    iput-object p1, p0, Lcom/nemesis/ownerinfo/NamePlate;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/nemesis/ownerinfo/NamePlate$1;

    invoke-direct {v0, p0}, Lcom/nemesis/ownerinfo/NamePlate$1;-><init>(Lcom/nemesis/ownerinfo/NamePlate;)V

    iput-object v0, p0, Lcom/nemesis/ownerinfo/NamePlate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    iput-object p1, p0, Lcom/nemesis/ownerinfo/NamePlate;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 36
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 38
    iget-boolean v1, p0, Lcom/nemesis/ownerinfo/NamePlate;->mAttached:Z

    if-nez v1, :cond_0

    .line 39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nemesis/ownerinfo/NamePlate;->mAttached:Z

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/nemesis/ownerinfo/NamePlate;->UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/NamePlate;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nemesis/ownerinfo/NamePlate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/NamePlate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 42
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 46
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/NamePlate;->updateName()V

    .line 48
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 53
    iget-boolean v0, p0, Lcom/nemesis/ownerinfo/NamePlate;->mAttached:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/nemesis/ownerinfo/NamePlate;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nemesis/ownerinfo/NamePlate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemesis/ownerinfo/NamePlate;->mAttached:Z

    .line 57
    :cond_0
    return-void
.end method

.method protected updateName()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    iget-object v3, p0, Lcom/nemesis/ownerinfo/NamePlate;->context:Landroid/content/Context;

    sget-object v4, Lcom/nemesis/ownerinfo/NamePlate;->PACK:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 76
    sget-object v3, Lcom/nemesis/ownerinfo/NamePlate;->PREF:Ljava/lang/String;

    .line 77
    const/4 v4, 0x1

    .line 76
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 78
    .local v2, "p":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/nemesis/ownerinfo/NamePlate;->PLATE_KEY:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    sget-object v3, Lcom/nemesis/ownerinfo/NamePlate;->PLATE_KEY:Ljava/lang/String;

    const-string v4, "dcsms"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nemesis/ownerinfo/NamePlate;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    .end local v2    # "p":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

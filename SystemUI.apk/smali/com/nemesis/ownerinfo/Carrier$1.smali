.class Lcom/nemesis/ownerinfo/Carrier$1;
.super Landroid/content/BroadcastReceiver;
.source "Carrier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemesis/ownerinfo/Carrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemesis/ownerinfo/Carrier;


# direct methods
.method constructor <init>(Lcom/nemesis/ownerinfo/Carrier;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nemesis/ownerinfo/Carrier$1;->this$0:Lcom/nemesis/ownerinfo/Carrier;

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/nemesis/ownerinfo/NamePlate;->UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/nemesis/ownerinfo/Carrier$1;->this$0:Lcom/nemesis/ownerinfo/Carrier;

    invoke-virtual {v1}, Lcom/nemesis/ownerinfo/Carrier;->updateCarrier()V

    .line 62
    :cond_0
    return-void
.end method

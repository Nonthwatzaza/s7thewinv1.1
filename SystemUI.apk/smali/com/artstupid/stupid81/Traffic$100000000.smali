.class Lcom/artstupid/stupid81/Traffic$100000000;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artstupid/stupid81/Traffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/artstupid/stupid81/Traffic;


# direct methods
.method constructor <init>(Lcom/artstupid/stupid81/Traffic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/artstupid/stupid81/Traffic$100000000;->this$0:Lcom/artstupid/stupid81/Traffic;

    return-void
.end method

.method static access$0(Lcom/artstupid/stupid81/Traffic$100000000;)Lcom/artstupid/stupid81/Traffic;
    .locals 1

    iget-object v0, p0, Lcom/artstupid/stupid81/Traffic$100000000;->this$0:Lcom/artstupid/stupid81/Traffic;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.adi.networkspeed.networkspeedsettings"

    const-string v2, "com.adi.networkspeed.networkspeedsettings.RandomActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/artstupid/stupid81/Traffic$100000000;->this$0:Lcom/artstupid/stupid81/Traffic;

    # getter for: Lcom/artstupid/stupid81/Traffic;->c:Landroid/content/Context;
    invoke-static {v1}, Lcom/artstupid/stupid81/Traffic;->access$L1000000(Lcom/artstupid/stupid81/Traffic;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class public Lcom/artstupid/stupid81/Jam;
.super Landroid/widget/Button;
.source "Jam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artstupid/stupid81/Jam$100000000;
    }
.end annotation


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/artstupid/stupid81/Jam;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/artstupid/stupid81/Jam;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/artstupid/stupid81/Jam;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/artstupid/stupid81/Jam;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/artstupid/stupid81/Jam;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/artstupid/stupid81/Jam;->init()V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/artstupid/stupid81/Jam;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/artstupid/stupid81/Jam;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/artstupid/stupid81/Jam;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/artstupid/stupid81/Jam;->c:Landroid/content/Context;

    return-void
.end method

.method private init()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    new-instance v0, Lcom/artstupid/stupid81/Jam$100000000;

    invoke-direct {v0, p0}, Lcom/artstupid/stupid81/Jam$100000000;-><init>(Lcom/artstupid/stupid81/Jam;)V

    invoke-virtual {p0, v0}, Lcom/artstupid/stupid81/Jam;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

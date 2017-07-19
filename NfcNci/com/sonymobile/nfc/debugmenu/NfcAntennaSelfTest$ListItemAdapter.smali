.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NfcAntennaSelfTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter<TT;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 426
    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    .line 427
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 424
    return-void
.end method


# virtual methods
.method public add(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter<TT;>;"
    .local p1, "object":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 465
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 465
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter<TT;>;"
    check-cast p1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V

    return-void
.end method

.method public final getItem()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter<TT;>;"
    const/4 v6, 0x0

    .line 432
    move-object v3, p2

    .line 433
    .local v3, "view":Landroid/view/View;
    if-nez p2, :cond_d

    .line 434
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030005

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 437
    :cond_d
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    .line 438
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;, "TT;"
    if-eqz v0, :cond_66

    .line 439
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;Landroid/view/ViewGroup;I)V

    .line 447
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    const v4, 0x7f0d0009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 448
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const v4, 0x7f0d000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 451
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    const v4, 0x7f0d000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 455
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v4, 0x7f0d000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "textView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 459
    .restart local v2    # "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getResponse()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_66
    return-object v3
.end method

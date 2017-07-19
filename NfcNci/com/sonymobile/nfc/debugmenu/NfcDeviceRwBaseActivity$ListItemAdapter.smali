.class public Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field protected static final TRIM_LENGTH:I = 0x4

.field protected static final TRIM_SUFFIX:Ljava/lang/String; = "..."


# instance fields
.field protected final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final mItems:Ljava/util/ArrayList;
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
    .param p2, "textViewResourceId"    # I
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
    .line 974
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    .local p3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 958
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mComparator:Ljava/util/Comparator;

    .line 975
    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    .line 976
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 973
    return-void
.end method


# virtual methods
.method public add(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    .local p1, "object":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1026
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mComparator:Ljava/util/Comparator;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->sort(Ljava/util/Comparator;)V

    .line 1024
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1024
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    check-cast p1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V

    return-void
.end method

.method public clearCheckedItem()V
    .registers 5

    .prologue
    .line 1103
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getCheckedItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1104
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    sget-object v3, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 1105
    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    sget-object v3, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->N_A:[B

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    goto :goto_8

    .line 1108
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_23
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 1102
    return-void
.end method

.method public contains(J)Z
    .registers 4
    .param p1, "addr"    # J

    .prologue
    .line 1034
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getItemFromAddress(J)Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getCheckedItem()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1067
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1069
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1070
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1073
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_21
    return-object v2
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
    .line 1060
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemFromAddress(J)Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    .registers 8
    .param p1, "addr"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1042
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    .line 1043
    return-object v0

    .line 1046
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    const/4 v7, 0x0

    .line 981
    move-object v4, p2

    .line 982
    .local v4, "view":Landroid/view/View;
    if-nez p2, :cond_d

    .line 983
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030018

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 986
    :cond_d
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 987
    .local v1, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    if-eqz v1, :cond_91

    .line 988
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;

    invoke-direct {v2, p0, p3, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;Landroid/view/ViewGroup;I)V

    .line 996
    .local v2, "onClickListener":Landroid/view/View$OnClickListener;
    const v5, 0x7f0d001c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 997
    .local v3, "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const v5, 0x7f0d001d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1000
    .restart local v3    # "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1003
    const v5, 0x7f0d001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1004
    .restart local v3    # "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1005
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1007
    const v5, 0x7f0d001f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "textView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 1008
    .restart local v3    # "textView":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    const v5, 0x7f0d0020

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1012
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$3;

    invoke-direct {v5, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1018
    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->getChecked()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1020
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_91
    return-object v4
.end method

.method public getWritableItem()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1080
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1082
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->isNa()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1083
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1086
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_29
    return-object v2
.end method

.method protected isValidAddress(J)Z
    .registers 4
    .param p1, "addr"    # J

    .prologue
    .line 1136
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public removeCheckedItem()V
    .registers 4

    .prologue
    .line 1093
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getCheckedItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1095
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_8

    .line 1092
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_18
    return-void
.end method

.method public setChecked(Z)V
    .registers 5
    .param p1, "isChecked"    # Z

    .prologue
    .line 1053
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1054
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->setChecked(Z)V

    goto :goto_6

    .line 1056
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_16
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 1052
    return-void
.end method

.method public setDefaultToCheckedItem()V
    .registers 5

    .prologue
    .line 1115
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getCheckedItem()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .line 1116
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    iget-object v3, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->get()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    goto :goto_8

    .line 1119
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    :cond_20
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 1114
    return-void
.end method

.method protected trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    const/4 v2, 0x4

    .line 1126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_21

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1129
    :cond_21
    return-object p1
.end method

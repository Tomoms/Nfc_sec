.class public abstract Lcom/samsung/nfc/ISecNfcAdapter$Stub;
.super Landroid/os/Binder;
.source "ISecNfcAdapter.java"

# interfaces
.implements Lcom/samsung/nfc/ISecNfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/nfc/ISecNfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/nfc/ISecNfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_doFactoryRfCalibration:I = 0x7

.field static final TRANSACTION_getDefaultRoute:I = 0x3

.field static final TRANSACTION_getFactoryRfCalValue:I = 0x8

.field static final TRANSACTION_getListenTechMask:I = 0x5

.field static final TRANSACTION_getPreferredSimSlot:I = 0xc

.field static final TRANSACTION_getSecureElementList:I = 0xa

.field static final TRANSACTION_setDefaultRoute:I = 0x2

.field static final TRANSACTION_setFWDebugLevel:I = 0x6

.field static final TRANSACTION_setListenTechMask:I = 0x4

.field static final TRANSACTION_setPowerOffCardEmulation:I = 0x9

.field static final TRANSACTION_setPreferredSimSlot:I = 0xb

.field static final TRANSACTION_setRfOptionUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "com.samsung.nfc.ISecNfcAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/nfc/ISecNfcAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    const-string v0, "com.samsung.nfc.ISecNfcAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/nfc/ISecNfcAdapter;

    if-eqz v1, :cond_1

    .line 79
    move-object v1, v0

    check-cast v1, Lcom/samsung/nfc/ISecNfcAdapter;

    return-object v1

    .line 81
    :cond_1
    new-instance v1, Lcom/samsung/nfc/ISecNfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 85
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    const-string v0, "com.samsung.nfc.ISecNfcAdapter"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 101
    packed-switch p1, :pswitch_data_1

    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 97
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 199
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->getPreferredSimSlot()I

    move-result v2

    .line 200
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    goto/16 :goto_0

    .line 191
    .end local v2    # "_result":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 192
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {p0, v2}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->setPreferredSimSlot(I)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto/16 :goto_0

    .line 183
    .end local v2    # "_arg0":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->getSecureElementList()[I

    move-result-object v2

    .line 184
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 186
    goto/16 :goto_0

    .line 175
    .end local v2    # "_result":[I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 176
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v2}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->setPowerOffCardEmulation(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    goto/16 :goto_0

    .line 167
    .end local v2    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->getFactoryRfCalValue()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    goto :goto_0

    .line 161
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->doFactoryRfCalibration()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    goto :goto_0

    .line 150
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 153
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->setFWDebugLevel(IZ)Z

    move-result v4

    .line 155
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_0

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->getListenTechMask()I

    move-result v2

    .line 143
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_0

    .line 133
    .end local v2    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->setListenTechMask(I)Z

    move-result v3

    .line 136
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 138
    goto :goto_0

    .line 125
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->getDefaultRoute()I

    move-result v2

    .line 126
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    goto :goto_0

    .line 116
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->setDefaultRoute(I)Z

    move-result v3

    .line 119
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 121
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;->setRfOptionUpdate(Ljava/lang/String;)Z

    move-result v3

    .line 109
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    nop

    .line 209
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

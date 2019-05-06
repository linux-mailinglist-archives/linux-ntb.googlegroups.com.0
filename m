Return-Path: <linux-ntb+bncBC2K3M5VRYEBB7EPYHTAKGQED3BS72Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EF714C95
	for <lists+linux-ntb@lfdr.de>; Mon,  6 May 2019 16:43:09 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id g128sf25483056ywf.11
        for <lists+linux-ntb@lfdr.de>; Mon, 06 May 2019 07:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R/+o6Az+4+h7KN52F8Zd/BDhEwOTUD4dpPjYSmuFBL0=;
        b=TgKWjCpNNNcf+wi7l8XaATlUolB06qzO6m6kXZFngzZQ9KnBCjT87s7meyJBkQDIbw
         14wJ8JI8zjgtBRaKeqaRCUo8RJMWheC7wgt+dPhN5OpFXRxCWVMl/xIFenaVnKTC2tqP
         61kxLuLw3WOfd/ZJpW2QKo0xppNw2mpDDFwmWwnlSFc6TL4LspDVpWtM2lftd1K3XNx4
         lk/j908HCVfM8/my4mnGYXnacyfRHTB+LELdddnb1veQh/kY1OOaIAvEAXsBKUQZbQ7m
         +xnnMHcT5ih0AGuewdau3d3Fa3/QksRJ4lsuS4Fxkn5Pmkr5d3MrrdhyXxz12SOLqsnF
         aoug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/+o6Az+4+h7KN52F8Zd/BDhEwOTUD4dpPjYSmuFBL0=;
        b=CbWxm8ILETHBLEhLAhUfKGlzGsejsD62bhzYFZF/AfeNvLFJmuvDbrAVaD9JDhB1Ow
         EYu/6do8/4xi57S8Q6Ma+bb3T01OpJn431+LmlR3rUIPTEj9noJDLNnRa/bskawHoq6S
         7WmjK2kpDb3I3i4mF5gMBRN3/uuhNZOOUmVcAuxlBxCXYt4FXPKXJxkXi98JSk6c6vO7
         RpP11tGwrwz7BT7z2Eh0zzSX6E3Yb9vGNzxPQp2b87NUOhjXucb0RgjkM0/lzF5jKHgf
         21FQU2EeyTjK1nUJ8t7ad89BsgXd0oxzJ8ixvQJS7ctSQlB3WT7cEeewsZs3CpQ/eGIq
         1Awg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/+o6Az+4+h7KN52F8Zd/BDhEwOTUD4dpPjYSmuFBL0=;
        b=sBWXVfKp7ZloYPxqoIF4DwId+Qx7ff6NdJSp3Qtjg/PDjgFOOuJxehoxxqjj18jrFo
         HZslirZ3HSU/FESJOpW480eAKZ+odcKR/j1BnjU8cV0LAthKh/kfiJaMOziN7aniDLnh
         ImhhBqGIG0x/K0rW5ZK6aZmKLxJ+KuiSfCVW9AI3gQRHjhI1WfjG2/09Ey+Wj0t2pVJ+
         rLvb/MaKJIVU3YtwxnfZ1IChTOMx8eukq7jSJ1A5kNf3Ya/n37WGfB88WXxyUoc4+/GA
         DkysdX5kCNHRehT4WQ+nP9NOZv6ZV2EY/2hXvw1TrqgRQ40BmxuAwP3+NGUUSaPmlvBQ
         qxdA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWRTQGXqS6icR2rFXHQmWSERrNjDw/zpc//H5M07j2cUTyvwPqJ
	zWyCSyxgljZ+xwAH702jEyA=
X-Google-Smtp-Source: APXvYqwrxz0+n+nS2iXsAkrNhfRspwVhaZIcvoSStMbSaC5KdC7gKFdqBrmiDC930N4G34BMODutEQ==
X-Received: by 2002:a81:374a:: with SMTP id e71mr8440505ywa.405.1557153788791;
        Mon, 06 May 2019 07:43:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:9401:: with SMTP id l1ls352009ywg.15.gmail; Mon, 06 May
 2019 07:43:08 -0700 (PDT)
X-Received: by 2002:a81:6e44:: with SMTP id j65mr8682801ywc.371.1557153788396;
        Mon, 06 May 2019 07:43:08 -0700 (PDT)
Date: Mon, 6 May 2019 07:43:07 -0700 (PDT)
From: trifundroid94@gmail.com
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <dfedc9af-85cd-4b78-9249-3ce794fbe3b5@googlegroups.com>
Subject: NTB connectivity issue under heavy load
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1936_941372203.1557153787637"
X-Original-Sender: trifundroid94@gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

------=_Part_1936_941372203.1557153787637
Content-Type: multipart/alternative; 
	boundary="----=_Part_1937_1705440660.1557153787637"

------=_Part_1937_1705440660.1557153787637
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I am not sure if this is the right place to ask but I am going to anyway 
since this problem has been bothering us for quite some time now.

A PC running kernel 4.16.7 and TI's ARM based SoC running kernel 4.14 are 
connected via NTB.
The ntb_netdev drivers are correctly loaded on both sides and the hosts are 
able to ping each other indefinitely. However, when under some heavier 
load, the connection breaks. At first we thought that it only happens when 
running TCP but it also happened for UDP as a transport protocol. 
The Wireshark logs show that the hosts simply forget where the other side 
is regarding ARP protocol. In other words, they know the IP of the peer but 
not its MAC address. We have not found a way to somehow hardcode this, 
especially knowing that the MAC address of the virtual eth made by 
ntb_netdev driver is randomized. The only solution is to restart the whole 
system and start again which is unacceptable.

Has this behavior been observed before? Is there any fix for this?

Thank you in advance.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/dfedc9af-85cd-4b78-9249-3ce794fbe3b5%40googlegroups.com.
For more options, visit https://groups.google.com/d/optout.

------=_Part_1937_1705440660.1557153787637
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello everyone,</div><div><br></div><div>I am not sur=
e if this is the right place to ask but I am going to anyway since this pro=
blem has been bothering us for quite some time now.</div><div><br></div><di=
v> A PC running kernel 4.16.7 and TI&#39;s ARM based SoC running kernel 4.1=
4=20
are connected via NTB.</div><div>The ntb_netdev drivers are correctly loade=
d on both sides and the hosts=20
are able to ping each other indefinitely. However, when under some=20
heavier load, the connection breaks. At first we thought that it only=20
happens when running TCP but it also happened for UDP as a transport protoc=
ol. <br></div><div>The Wireshark logs show that the hosts simply forget whe=
re the other side is regarding ARP protocol. In other words, they know the =
IP of the peer but not its MAC address. We have not found a way to somehow =
hardcode this, especially knowing that the MAC address of the virtual eth m=
ade by ntb_netdev driver is randomized. The only solution is to restart the=
 whole system and start again which is unacceptable.</div><div><br></div><d=
iv>Has this behavior been observed before? Is there any fix for this?</div>=
<div><br></div><div>Thank you in advance.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To post to this group, send email to <a href=3D"mailto:linux-ntb@googlegrou=
ps.com">linux-ntb@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/dfedc9af-85cd-4b78-9249-3ce794fbe3b5%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/dfedc9af-85cd-4b78-9249-3ce794fbe3b5%40googlegroups.com</a>.<br =
/>
For more options, visit <a href=3D"https://groups.google.com/d/optout">http=
s://groups.google.com/d/optout</a>.<br />

------=_Part_1937_1705440660.1557153787637--

------=_Part_1936_941372203.1557153787637--

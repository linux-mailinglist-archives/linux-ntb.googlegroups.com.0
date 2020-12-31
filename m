Return-Path: <linux-ntb+bncBD2ZNEN62MDBBEX5WT7QKGQECKGPQ7Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E58912E7DCF
	for <lists+linux-ntb@lfdr.de>; Thu, 31 Dec 2020 03:59:31 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id x21sf6365092pff.14
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Dec 2020 18:59:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609383570; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHhR9j5gnEHgXYsL6M3QuhQ7rulM4Kmeb69x4Ix+IVhEvQ/sS8XZFZ8fiKklMHZCN+
         ALJl/3vinaJNEyZcRD+WI94omewSRwhlksCCqNWSBAm11+zvP/IT8AYe1PFUc+xrlGia
         Ex4YZwczZ3WMchrIUAiY1EnYyJq9POEc47xyN8pvwKtyTrE3nt0AyygYfCxF4NMmSXOW
         qU+JPQLqp1xCAd42u8jbcCgVIlr4sLNNsCdW65uAFRvHafEn8Gq9jWau0pZv0IucDu/1
         BQPEunkPhFsjybiK1Q7ebdjJelwbJNhXDc5nBfM5cP+TEeg/fX9DBCn3rUJLU5Ugeff3
         uYLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-subscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:subject:to:from
         :mime-version:list-unsubscribe:date:message-id:sender:dkim-signature
         :dkim-signature;
        bh=YKbIvzDlKHcKnAW2mtMknYHxFnaMVaEYo5pbhJEo1f0=;
        b=MbD2sqXW4TviYPigp/p0DlT5rAST6j8OlqxJyy825aLDj4h9RYawvMuU9WQlREqxHs
         f62McDlCpX2sSyF9wUomZvTfIYaplHME5zYLINHRCNlZGTrmKsFZ5ewTuz80ycKeOBwc
         JXVh/YVp7eTnvSVd9JBeCR5duBbODx70UjdvkglJZGRWaXuGtA2mM3vvQrvfqpDkmJ7U
         7IM1eeZlKDpwNNzUndrSGkGEFhz/GrSYdHlhP2M8cCGL3ofTPXWF7E6g6F5UNx57Ap3+
         ktqMRAKlZS22GNyvWgNreAjeOTPH8IUYZcFOBJF97StHqUSfpR6ANPQgYm5GofiZj2y6
         9qrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OaMJj65R;
       spf=pass (google.com: domain of goodinform8@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=goodinform8@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:list-unsubscribe:mime-version:from:to
         :subject:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe;
        bh=YKbIvzDlKHcKnAW2mtMknYHxFnaMVaEYo5pbhJEo1f0=;
        b=hkA8l4Cot1KZM5yAU5NHW3ojbjSLzm4deGtij47ERBtIulmUBMgVHk0cMoc9qHf3vA
         /3OBZmWLhVlgXgRnYDBgVbKLWymgbXSNhg2Beuwy7fKFVvtFxB2lEOWok5CcEB2c8xYT
         DujAfcJBYXuGmrQf1qbPOBznc2ASg4MOS4nHijQyxvaEBd0cwAlcJ56pgBWmFx4o2MNZ
         NcudY/pYOX+24J25qPqaBsPdMf3C8o6SR7MWHDSgecoLNxYFnB50LKbB2ehpvFOyc/eb
         wx8Vrlxquwsx3v5abadzmHlx/Cw2kPtwVPyYTZCXOEbiFiIQi1P7mbM0vkpa9agiU6Di
         TnUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:list-unsubscribe:mime-version:from:to:subject
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe;
        bh=YKbIvzDlKHcKnAW2mtMknYHxFnaMVaEYo5pbhJEo1f0=;
        b=nG5heYr1QO1WR2UTGyaE8Bp83cqw1x+7nS/2ucW4GbA8pekHJdEinvYlgjYOASBzns
         sRc3HyiN/R9p6S5q+TxuwVvJC+zvOkYVCI/gaJIjW4VUzwU6ZsBD0RTZkd+iNcC9VPW1
         m5UGlsGc72GQKh7Igux7ySub+Up/Bkro9nDwrWIDzozVPUZbK8iwgx5RtVqmBiE/Vgi5
         VZyDqC67HJE1ZzM1r+VVe4jN8pkIwpiVqcgO55ez9DdMMYoJRhogzaczaKtttU4hfs9U
         gA9cbSD2Hm32ycZrYtBkU5g1QweKPkAxdBp96jT9NN46fD09eDZT/AXVBbYu5kbQFpgF
         UpJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:list-unsubscribe
         :mime-version:from:to:subject:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe;
        bh=YKbIvzDlKHcKnAW2mtMknYHxFnaMVaEYo5pbhJEo1f0=;
        b=shYHRBm6k4abFw6PLtaC7MUCN6fmlw8tZDmogoYktBOIYFzjfRha/cNAIiwCElFbQj
         t9UVo58Lt3sAhwvvis+UUde0S8HO8l1M/ihhvljd1woxBWIw7j69I0CDUN/iq0gSshA4
         HVoGOTjzGT3RqjUi4W/kllFspChQ2qvHaW2pwG6Bd/+7UVx6SLSGdFqrbwZcWotBMcLh
         Un8g0JC2nvOnrNgfqvZTADsTM8LDzg1LLaajFz9T5/Iab/M8JWjabFHU7jJ0yCq+8KXU
         8sM5QTCnHsM53yPqv8ddsah9VDCkuU7FYiJjV9ss4zs4I69MJSWq02EZt6Xp4CJ98YZV
         ck2g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533GdVbawV3IQqSj082hqTFv3kojIzNdb7Grw6bCsNeflabglRAy
	8bmwFI94FQ7J4pMrqXuRFuY=
X-Google-Smtp-Source: ABdhPJytZ6U6jGfrjAMmi4pvmWU/FbirKUluo9i0Ug6n02+3ZbQWXHgzFAwIXTpYHDh8nxtVlKa94Q==
X-Received: by 2002:a17:90b:33d1:: with SMTP id lk17mr11582696pjb.174.1609383570305;
        Wed, 30 Dec 2020 18:59:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:a416:: with SMTP id p22ls13750378plq.3.gmail; Wed,
 30 Dec 2020 18:59:29 -0800 (PST)
X-Received: by 2002:a17:902:a5cb:b029:dc:2706:4cc8 with SMTP id t11-20020a170902a5cbb02900dc27064cc8mr36626330plq.62.1609383569658;
        Wed, 30 Dec 2020 18:59:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609383569; cv=none;
        d=google.com; s=arc-20160816;
        b=ABNgyt5j3PCnX9Q3k7o4VrQHYNfZbN4RKryWyVjoUF1IEIIX0gCfRTdZ/BrHjVTTog
         ZCum6JZmg55AoZy0CjXvbsC0fZOmHMFylaxe9kiWZ6u50vJoN3CRpD1llIoBKemDb7GH
         Gg4F2fe7zcqoeAKC3zdQdPjaJ4PB2lb7Vcjve9S8lNN1rS2S3tJ8wdKcUnBfo3kej6Rr
         t4Hpc1K1m9BH41FMC79NgLRF2MGVR2tPD/VB0lvfb88iZdecn3hwtskqJQcJ41hJ48Zm
         ne3s6io1194odxTqk2aw59zgyjGsK37veirXxHezng9f77ZZB0QS/mMGf+aDxMI/dGEJ
         6teQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:subject:to:from:mime-version
         :list-unsubscribe:date:message-id:dkim-signature;
        bh=15Hh0Jnp9aOhPIGAuICTmIinRy2kbfst7fiiD3suOA0=;
        b=Cn+VB6a1LXvboIQ0mCMqlSVBXeszTo5GyxYyaWpul6ibYIex+Phw/Ly7qN5d4PNJfK
         XhfaUU6L14EID2XlAvcetePzdoo19AqsVUxUNkEwhEuaiEYUavoUhEpTJcU1Fq8Hyelp
         XjLdaurKslWe+1/3NH2M3/boJyIInjlCHEo6VAD2gb7OYvGtGKRcVVrABb3TbeOcUM2f
         qSCU5zRDGDhorUWBByB/wQ1KWxcI+yzJi1QRL6ZNmwX1qYANoPaAVbrFLjWIcDLJf3Zj
         2CdVOSuNQTG2YCY38AcqlpBTF/V/h/jt+OKLJB7rX4r0U/P8UJb6VDkuhwZG8xflwAWe
         BIXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OaMJj65R;
       spf=pass (google.com: domain of goodinform8@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=goodinform8@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id j11si1129643pgm.4.2020.12.30.18.59.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 18:59:29 -0800 (PST)
Received-SPF: pass (google.com: domain of goodinform8@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id t22so10625386pfl.3
        for <linux-ntb@googlegroups.com>; Wed, 30 Dec 2020 18:59:29 -0800 (PST)
X-Received: by 2002:a63:5a61:: with SMTP id k33mr29951845pgm.433.1609383569340;
        Wed, 30 Dec 2020 18:59:29 -0800 (PST)
Received: from DESKTOP-DI4367S ([27.3.184.35])
        by smtp.gmail.com with ESMTPSA id c62sm43975443pfa.116.2020.12.30.18.59.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 30 Dec 2020 18:59:28 -0800 (PST)
Message-ID: <5fed3e90.1c69fb81.6d5d5.2a65@mx.google.com>
Date: Wed, 30 Dec 2020 18:59:28 -0800 (PST)
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>
MIME-Version: 1.0
From: "Tanisha" <goodinform8@gmail.com>
To: linux-ntb@googlegroups.com
Subject: =?utf-8?B?bGludXgtbnRiP+S4iemAgOS4juW5s+WuiSFGcm9tIFRhbmlz?=
 =?utf-8?B?aGEu?=
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: goodinform8@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OaMJj65R;       spf=pass
 (google.com: domain of goodinform8@gmail.com designates 2607:f8b0:4864:20::436
 as permitted sender) smtp.mailfrom=goodinform8@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>

<CENTER>
<p><div style=3D"font-size: 27px; font-family: verdana, arial, helvetica, s=
ans-serif; background-color: rgb(255, 255, 255)"><font color=3D"#0000cc"><a=
 href=3D"http://theuocxua.com/getdocuments/F4FzX4kXPc5AAAAy0IShAAAAXSuzvUHO=
2lot3Ii8a2hCYs9Qgkc0V0QjBhNlbe0CJShzRh/V5a83OPX7EFx98RV9VkU0A=3D=3D/linux-n=
tb?=E4=B8=89=E9=80=80=E4=B8=8E=E5=B9=B3=E5=AE=89!From Tanisha." target=3D"_=
blank" rel=3D"noreferrer">The truth.info</a></font></div>
<div>
<img src=3D"http://theuocxua.com/getdocuments/F4FzX4kXPc5AAAAy0IShAAAAXSu2H=
DWi8clxIQd9Qr6NByviU3iuspcJYsOVgTvrRLjrrFEe5VbuGB5Q8wNiZuajuN5GmciBBBBqvmST=
oi6HbKKokFRo=3D/ZE8GchG5uuYqCL4E7BS5RAHPqt2Q0ZkUwy9eS12ybGvW6BzCRYBBBBqvD20=
5erSNwvZ/linux-ntb?=E4=B8=89=E9=80=80=E4=B8=8E=E5=B9=B3=E5=AE=89!From Tanis=
ha.">
<img src=3D"http://theuocxua.com/getdocuments/F4FzX4kXPc5AAAAy0IShAAAAXSuzv=
UHO2lot3Ii8a2hCYs9Qgkc0V0QjBhNlbe0CJShzRh/ZD4Afe6UFKaEWg7lPQCSTBYUF33CeykQ9=
rnqdamBBBB71ChGOc43Qt4xtmmjmm25USD/linux-ntb?=E4=B8=89=E9=80=80=E4=B8=8E=E5=
=B9=B3=E5=AE=89!From Tanisha.">
<img src=3D"http://theuocxua.com/getdocuments/F4FzX4kXPc5AAAAy0IShAAAAXSuzv=
UHO2lot3Ii8a2hCYs9Qgkc0V0QjBhNlbe0CJShzRh/CEFd7w4T2ppEAAAA9wvglR4u7RcgmjBBB=
BBBBBdQ1hUJuZJXJnF5AB9eaAAAAd2h0ql3Gl3rHRSkAAAA9N0ZOAAAAdIWmJtabyJTbDZAAAAR=
nwzu7mFyw2BBBBKEBlmxMAAAAY=3D/linux-ntb?=E4=B8=89=E9=80=80=E4=B8=8E=E5=B9=
=B3=E5=AE=89!From Tanisha.">
<img src=3D"http://theuocxua.com/getdocuments/F4FzX4kXPc5AAAAy0IShAAAAXSuzv=
UHO2lot3Ii8a2hCYs9Qgkc0V0QjBhNlbe0CJShzRh/CEFd7w4T2ppEAAAA9wvglR4u7RcgmjBBB=
BBBBBdQ1hUJuZJXJnF6G0AAAAOc80X7LoWM2oFb3lTsbQYM2WpGoyOJiw5RWfNpH01NqkJAu2k4=
2iUFfYJBXE0=3D/linux-ntb?=E4=B8=89=E9=80=80=E4=B8=8E=E5=B9=B3=E5=AE=89!From=
 Tanisha.">
<img src=3D"http://theuocxua.com/getdocuments/F4FzX4kXPc5AAAAy0IShAAAAXSuzv=
UHO2lot3Ii8a2hCYs9Qgkc0V0QjBhNlbe0CJShzRh/CEFd7w4T2ppEAAAA9wvglR4u7RcgmjBBB=
BBBBBdQ1hUJuZJXJnF6VmAAAAf55pqqdJu7ROKeuneOPfwaZjAprc9HyALpqf71k4Z5ktf9RNwd=
fHyB0BBBBGC3MY=3D/linux-ntb?=E4=B8=89=E9=80=80=E4=B8=8E=E5=B9=B3=E5=AE=89!F=
rom Tanisha.">
<div>
<em>*=E5=85=B6=E4=BB=96=E6=96=87=E4=BB=B6:</em><br />
<em>https://www.mediafire.com/folder/inj2vedwe7cj3</em><br />
<em>http://coduyen.info/mh/00/9&pi_n.g.pdf</em><br />

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/5fed3e90.1c69fb81.6d5d5.2a65%40mx.google.com?utm_mediu=
m=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/linux-ntb/=
5fed3e90.1c69fb81.6d5d5.2a65%40mx.google.com</a>.<br />

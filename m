Return-Path: <linux-ntb+bncBDPINV4F24ORBRPTZL3QKGQENJ3GPFY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id C6432206A20
	for <lists+linux-ntb@lfdr.de>; Wed, 24 Jun 2020 04:26:13 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id w142sf505682lff.16
        for <lists+linux-ntb@lfdr.de>; Tue, 23 Jun 2020 19:26:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592965573; cv=pass;
        d=google.com; s=arc-20160816;
        b=JbaoTQew0EB7Bv0mRpfHoNeyMg2w4mFGclYNWVfDygCuq8QnoEUOQ59S39pcUrAqL+
         GPKZh2UQuUKFGOX+76JR/GoX3eFWtSpa3gSUv/XMPutJoZQXT0pFJSuIzDYk44yRDjSq
         6Dyqb1KGADauovA7NPLqiviTwPAvLlEsRre+HiEZX0DYIZMfBlEBawVC7vQHITt1Ta/Z
         aleVgkXLgBSokE4pnZ2cX6PqObLr1kRGCt1rP492xSw7lNToMgfpOPT3daN4jGB/pG8a
         GVT/5z9gGlEPAV1G774wGopw3hHt9YWJ4P2JFy5J9s6fS/SyovQQ/akR2Ecj6yccOj/K
         6K5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:reply-to
         :mime-version:to:subject:from:sender:dkim-signature;
        bh=SKntrVaNm6yNbl4dNHncxruvCFbNebHUebWzxRk44ec=;
        b=CdOQmXG1gjx7j//XjItKacy9tvCBdfnJRIjJ7ptG79TrRcPOu7256fw2vG4Bjmf1xB
         kM1SeZzGlGslwSUHsnpEq1jTKvG78Q6f7SpAcNjHKZdHVHuBznV9koRpqczJrAqQ3qYY
         cH4CdTi3akhueauaAGcj3wFePrp4kXbz7+pp1B5Q4n94hvmb2mU7G+A95Y/BOrEVgN2v
         rOGV9Jvji0D7Zwry/xR7BLrnTrD1oM9JMgB8sDKBHJXjMMVGIHt4QrEfpukQYIZj2KZV
         BMAILwkU9fwbCda9tzK1RWpojITs2qUXadbW3VWgBB8OBHycZNRRB5RVibpVOovk9ghy
         PUZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning karen@pei.com does not designate 80.12.242.135 as permitted sender) smtp.mailfrom=karen@pei.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=pei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:mime-version:reply-to:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SKntrVaNm6yNbl4dNHncxruvCFbNebHUebWzxRk44ec=;
        b=KWZ/QtkVt8WT6lsCTwJ4ywQXrSOEVjHL3UmS90KP/F8poT9v0gzDKk2CTz2dnsQKoT
         MjjSKDE0EQq6oKbJ2B1INlxE1tVFpn3ozPRouf8wiE6v8yAJo4saxsKZU4fCNvQRQ1p8
         dV/Ud/WTaBNwRoGmVstpREH76RE//DKsR6U4MLpRiYZ/5XxBLLveU7MhUmmPXzWHrE7x
         0XyCLPKymmXsCO0IGnycUDpjkn0j9PevrY4IH+nhCGp350GHXzOodaktjoWV+oR1cROj
         9vhF745/eEtI1to3r+RBr4GPDq+W4fWWnb48f4r7Z3IGuNri7FJK0CraTuHlH0/BcpaX
         uWTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:mime-version:reply-to
         :date:message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SKntrVaNm6yNbl4dNHncxruvCFbNebHUebWzxRk44ec=;
        b=uHTMYi6QPTOPyg5ZM/0/VIhCQ7cVzVCrwjjSA2WAr+y30O5+yBnSklfi29aekRRFLM
         bS5D53w0Yh+b4wXLXUeMVxHAy9red1WJizyEcz1+q6nrzxuJK5wh9kOZLkArPxqUxDfa
         TnxFjZ6F6pXMfLvMN3cd+tglJnDLlVyU+WA80t0Pj+W4Rr8bz/YVBD90ojNvTpK56Ja0
         IMLNRK281JzFdY5EySRena0DcG6UXUq0UAKQkdbMu+aZeiyuC+mYifc3TmDYzNBndNX7
         u7jotn0xNxzLEVeRUXKlAHgw5HYxa0VudpUSNhcyOaRxfL9kUwUtiaeKADBs8Kis/bLi
         90Jw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5331/1x9gCI0B1WpFAogL7DWE4w4fyhrpuYPYsTNAy6wtV7LiDGs
	JdoisDYp8d+/1WyBFmnO8l8=
X-Google-Smtp-Source: ABdhPJwWlUOAuJhCApeAT8iwyUeBWgEsdu74HSLTjXdmTv/laMFy2TWw33Y13cV3V37NDPNd5DD0AA==
X-Received: by 2002:a2e:6c15:: with SMTP id h21mr13171961ljc.403.1592965573347;
        Tue, 23 Jun 2020 19:26:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:96d2:: with SMTP id d18ls153242ljj.1.gmail; Tue, 23 Jun
 2020 19:26:12 -0700 (PDT)
X-Received: by 2002:a2e:7303:: with SMTP id o3mr13448537ljc.100.1592965572803;
        Tue, 23 Jun 2020 19:26:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592965572; cv=none;
        d=google.com; s=arc-20160816;
        b=qPS+w34Zqo+LGMElPrFgbUm4ISYS/MjhHse7XH2O+eWfVweseiGZrHDVSrAfxZrG4s
         /+1lpgQccg9O6JyaKjigwGE8DtMtemVG/HEsb5VfjAw6eFQKpGup8fTyK/PI63lcH5ag
         ZNT1zA4HO0mVsywzNLzDhKaIJXg3FxrtU/8W44QunP1AUNLEv/3GsFjhVBs0LNuVFvNx
         ym8KXDQo6hRYOCYVmnhUS9Xj9xevVZ4VQG+uGhnPh3zzQqj8Rb+txizFKmNKW6kOq3Ft
         /hSd+zqc4pBFZ+724WE48qBzjZJx/u/Y2wYHjfRoy0AgA9jEj+loALKcQGVEFABqtrOq
         3AhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:reply-to:mime-version:to:subject:from;
        bh=sa80Rf6pfXUTGjzeSazDjnjREZwfiPfMm1hSiUZq7Do=;
        b=zPr+86Wv1KfLWH1W83i4vpJqK0xpu/1enyGCiJl1CHr9vmcN5BN9ApZD0y9YDLQppH
         V1Y4702Em1b3W0tg/T9qNB3hK6Ds62swJx5q1ExXMG85yvI8ar9MF4y3mUew1D2efbwa
         QM0a1MkLvcUTivL1GTlIrtJVsBcaZBcH6WW4+ceM1sPe3bqt1COxEbGZWC/JgRJApVxj
         +UNJfZbNNYPXJBqeCkCBD/wIz8tRsvpz0HhVs5HYpqQVpv60TafsFMGFb5T8dUdyMF/q
         pWQ1tlEC1vD0WSkaBPAI4qB59oya/S+oh2wD0MfTEGTXfsU6TG4TsbMOpG4UglDAlF//
         Wqjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning karen@pei.com does not designate 80.12.242.135 as permitted sender) smtp.mailfrom=karen@pei.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=pei.com
Received: from smtp.smtpout.orange.fr (smtp13.smtpout.orange.fr. [80.12.242.135])
        by gmr-mx.google.com with ESMTPS id j19si976377lfe.2.2020.06.23.19.26.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 23 Jun 2020 19:26:12 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning karen@pei.com does not designate 80.12.242.135 as permitted sender) client-ip=80.12.242.135;
Received: from DESKTOP-Q5JCF6G ([90.3.146.230])
	by mwinf5d71 with ME
	id uqBE220044yUvma03qSAsP; Wed, 24 Jun 2020 04:26:12 +0200
X-ME-Helo: DESKTOP-Q5JCF6G
X-ME-Date: Wed, 24 Jun 2020 04:26:12 +0200
X-ME-IP: 90.3.146.230
From: "Ms Karen Ngui" <karen@pei.com>
Subject: To ~~~ linux-ntb@googlegroups.com
To: <linux-ntb@googlegroups.com>
Content-Type: multipart/alternative; boundary="D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD"
MIME-Version: 1.0
Reply-To: <invoicekngui054@gmail.com>
Date: Tue, 23 Jun 2020 19:26:11 -0700
Message-Id: <23102020062619F99C9A78D1$5239FE27FD@DESKTOPQJCFG>
X-Original-Sender: karen@pei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning karen@pei.com does not designate
 80.12.242.135 as permitted sender) smtp.mailfrom=karen@pei.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=pei.com
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

This is a multi-part message in MIME format

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD
Content-Type: text/plain; charset="UTF-8"


Kindly confirm if you got my business collaboration In-mail sent to you via LinkedIn.

Thanks. Mrs. Ngui

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/23102020062619F99C9A78D1%245239FE27FD%40DESKTOPQJCFG.

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
  <META name=3DGenerator content=3D10.90> <META name=3Dviewport content=3D"=
width=3Ddevice-width, initial-scale=3D1"> <META name=3Dformat-detection con=
tent=3Dtelephone=3Dno><title>To ~~~ linux-ntb@googlegroups.com</title>
 </head>
 <body style=3D"BACKGROUND-COLOR: #ffffff" bgColor=3D#ffffff> <P align=3Dce=
nter><FONT size=3D3 face=3DArial><STRONG><FONT size=3D3 face=3DArial><STRON=
G>Kindly check through email,&nbsp; I sent you a proposal via LinkedIn on t=
he 20th of last month...did you get the message?</STRONG></FONT></P></STRON=
G></FONT> <P align=3Dleft><FONT size=3D3 face=3DArial></FONT>&nbsp;</P></bo=
dy>
 </html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/23102020062619F99C9A78D1%245239FE27FD%40DESKTOPQJCFG?u=
tm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/li=
nux-ntb/23102020062619F99C9A78D1%245239FE27FD%40DESKTOPQJCFG</a>.<br />

--D712aoV3QpKmaCsvfYI=_ZXgktejymc9FD--


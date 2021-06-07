Return-Path: <linux-ntb+bncBAABB57K62CQMGQEGIPZUFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EF439D493
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Jun 2021 07:58:17 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id s4-20020a3790040000b02902fa7aa987e8sf12151514qkd.14
        for <lists+linux-ntb@lfdr.de>; Sun, 06 Jun 2021 22:58:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623045496; cv=pass;
        d=google.com; s=arc-20160816;
        b=GJeuo0L8NYBi+EOYU87IgWpOiPgpwNhUnTnZftLoI+pQ2xbpSQq9LMfIFsiyppC33N
         WLombaQbO95ADuO5YzyzrulWoetjCgk2M+bzSEDNY5zC3oQyYwOTfFEry4GIdp6GXM52
         xJbePHIonfHLhHvU19n2v326jz/e5qIS06OeF8GsKdZUN6VO9U7Mk9Ln4oNKwmNZc9zC
         8998JbYk6ESiAADA/SXKriaIa1mNM4EdsJdczpzXHAluSCDGFAXOLHe/RTetmulDNfCW
         Ll5HY3cY0/1GawpiVMeMcx2OJczjrnGMb8xwD07yHDspOIP5cM5LUq9/XCb6PF3gkDkH
         CCtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:references:mime-version
         :subject:message-id:reply-to:cc:to:from:date:sender:dkim-signature;
        bh=zFiAEKpLMVpbUt+60QLpseOwdwdtrn2iXZyGmnzi6GM=;
        b=SUSsTj9WhWPpPoVyqoMusDwCuQEoOXzY/wVWDZveG9ZWpAjSOLEzsQfq6Ix6N15JSz
         FK4QYohPY0QVwqS7wHpZX/RuECpYSplhK8Syqi2eYPEUGlZto8v9qnagG/PwIw67H3/s
         8YY1gf3i+pwvytTXYbFP45Q0YPK24WQg1GfNib9VUjfWSu1N7n0Y7l9I9lhcFGE7vZl2
         KZrfUTa7sKH1msKRqhDQhwdMicyJBfeKiTmuwKeCQUOeBohr4g28lHJwxro8zRRRVYvM
         +ZhgmiJ7pURzMybQNPSHZVMAYIjkEtyf/zEv0Df6/20ZKT2yJt7Jwx+qGkquZTBbu1SI
         30UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:reply-to:message-id:subject:mime-version
         :references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zFiAEKpLMVpbUt+60QLpseOwdwdtrn2iXZyGmnzi6GM=;
        b=OZCSOnrnPzs5/QnsCpMELL1jvrBSfTjBaEN2605rKUjgckoONHAxAeg5g+7eLxOB7s
         ycaJcbO4AwVmzhaVSmggCLelpfF7dZI3GCgNo0mRZWjW0FNe1tCr3/uq9U7QMDlLGfR8
         +7SzF60oX9uhrH2pWNa5xpGvX5OR0+ib/tbvtmwkHiUR/9RlWpYVgCRyobK9xF1cJU9I
         yMU3vGgDVUNZ7PMS8kk+zvvyOaLLfB8mX/otP9uiTArU3gDtOXUDF1BNXUEoWbYqXbkC
         B+6ctwy5yG6L2HURjYfK7pl2jMLfFBeLP8lfGiSpzamCtuF2Et6cUe1hrY/he/zceQ8o
         +pFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:reply-to:message-id
         :subject:mime-version:references:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zFiAEKpLMVpbUt+60QLpseOwdwdtrn2iXZyGmnzi6GM=;
        b=SpP1LtwJTT02HWnZV0AOtMxJJDGCNT5urvc3iQ5XDLv5UIeciG23DWaEmRvhFyLztC
         1C+DuG7etOsTjhYhRJoJW1rA7GXcqPsCCBo6lOkAaL9+aAIdgYUmms7QWoGji18SLqy3
         slYGdUmM3CfW/BsKP5BFqQohPBDBZCTELCqYzr9SoCIeZZh1hpob/ZXGzQfEZt2feC/3
         Qle1KhbNzk5tAwM3JPsKQr7SAskbgqVyYEW14rMPywPcwagABuUZ7Rh1WpNGOeg1mTcl
         kWmKLv9wvkTLdEEIgK+oxYZnlriGPQHpdEaSjm4UtxwFBphiGO6jq+W/4QRJebvAtuEk
         3ERw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530wmp7JiUABFh32Pm7n6JOWmEUMwl+5xzoUU6YGXjmmawox1bNn
	DQ9myGo5c1E06XzgFN6STw0=
X-Google-Smtp-Source: ABdhPJx/vNh5BJ8yjagnpPuJnpaJc+dzSHj3C7RiyWf6ozTZ8iVg8kwqr1SwwGITMLrJbTeuxhTzTg==
X-Received: by 2002:ac8:490d:: with SMTP id e13mr14849144qtq.179.1623045495919;
        Sun, 06 Jun 2021 22:58:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:af04:: with SMTP id y4ls7937612qke.8.gmail; Sun, 06 Jun
 2021 22:58:15 -0700 (PDT)
X-Received: by 2002:a37:444a:: with SMTP id r71mr14973597qka.381.1623045495472;
        Sun, 06 Jun 2021 22:58:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623045495; cv=none;
        d=google.com; s=arc-20160816;
        b=tX/IkwD2E694dZHHI5YKQ4T3GKxT2fzcHObSSsL/xUwew7K2fNFrl2UJE2TxhBTVYN
         YftuFzgr2Te9BFXD5T7IkhxmJmCcYoUV2FPT0nMq9ze7rIFF8aAgw7fByIdVyj7WAtPZ
         Te25G9B3jrXZonYez9b0sZTQb6691QaxupEghrjamyU/IIK6Uc9JzjyM/+7WG/ytQtw6
         oQI/2LW7pBTb6+GpH98j5AsQuC3jF7QZ2U5Byq+7zlgd9zcGZuhK80kWKqP5dye4ce13
         dw46bLIUapvCh76OnFtRKIWMA/R2sTI4pBk6pPsdf2j6MZ2oD7/J5/IMkXuWn4FLvnQW
         +DAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:references:mime-version:subject:message-id:reply-to:cc
         :to:from:date;
        bh=Qji8/Wq13TZHVGg8fQjF+luG9cVkrNCTOx4s+jCBU+w=;
        b=utuGDQ0kaRc94QNve75Z+IFrwZR9p5qsX47k60mz+984mv2PFNZb72hvRiPPOL3p/s
         5H32rn2WtyAyFU3fypu2PgINWCnixF9R6gjjxx6ITzcEimFZ5gDQcvCU+2XYVoAwdpCi
         qxbWUjClk+DQWULB1ilry/CTWK5H7EWUW70D/t01qIFWmOHOyzi2J2W7EnOBqYMBE6BX
         shmEELXsyV+Q8K/2aiJDfkKd7DojniWkbogc5UhvSgzs5A5+xdYwAYtAq2yaCHEKV9Hs
         kiNxn8tDvGxA8O5En0NFDygBE2WIyusurA/kZwZMwvlHqS3MkXXXgAP0zF4A43qV1EGH
         SBEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-133.freemail.mail.aliyun.com (out30-133.freemail.mail.aliyun.com. [115.124.30.133])
        by gmr-mx.google.com with ESMTPS id e4si265087qtg.1.2021.06.06.22.58.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 22:58:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133 as permitted sender) client-ip=115.124.30.133;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R591e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04420;MF=yang.lee@linux.alibaba.com;NM=1;PH=DW;RN=6;SR=0;TI=W4_6173578_DEFAULT_0AC264C8_1623045491405_o7001c314g;
Received: from WS-web (yang.lee@linux.alibaba.com[W4_6173578_DEFAULT_0AC264C8_1623045491405_o7001c314g]) by e01e01419.eu6 at Mon, 07 Jun 2021 13:58:11 +0800
Date: Mon, 07 Jun 2021 13:58:11 +0800
From: "Yang.Lee" <yang.lee@linux.alibaba.com>
To: "jdmason" <jdmason@kudzu.us>,
  "Logan Gunthorpe" <logang@deltatee.com>
Cc: "dave.jiang" <dave.jiang@intel.com>,
  "allenbh" <allenbh@gmail.com>,
  "linux-ntb" <linux-ntb@googlegroups.com>,
  "linux-kernel" <linux-kernel@vger.kernel.org>
Reply-To: "Yang.Lee" <yang.lee@linux.alibaba.com>
Message-ID: <f39ea413-ac8a-430a-ba3d-9c197b3584ba.yang.lee@linux.alibaba.com>
Subject: =?UTF-8?B?5Zue5aSN77yaW1BBVENIIDIvMl0gTlRCOiBGaXggYW4gZXJyb3IgY29kZSBpbiBudGJfbXNp?=
  =?UTF-8?B?dF9wcm9iZSgp?=
X-Mailer: [Alimail-Mailagent revision 2546561][W4_6173578][DEFAULT][Chrome]
MIME-Version: 1.0
References: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com> <1622802051-43464-2-git-send-email-yang.lee@linux.alibaba.com>,<490f9031-7a12-6031-7262-f38cd96cb502@deltatee.com>
x-aliyun-mail-creator: W4_6173578_DEFAULT_TCwTW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzkwLjAuNDQzMC4yMTIgU2FmYXJpLzUzNy4zNiBFZGcvOTAuMC44MTguNjY=FR
In-Reply-To: <490f9031-7a12-6031-7262-f38cd96cb502@deltatee.com>
Content-Type: multipart/alternative;
  boundary="----=ALIBOUNDARY_78408_7f4bf1157940_60bdb573_d3cfe"
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.133
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

------=ALIBOUNDARY_78408_7f4bf1157940_60bdb573_d3cfe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I have sent a V2 patch.=20

Thanks for your review.
------------------------------------------------------------------
=E5=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9ALogan Gunthorpe <logang@deltatee.com>
=E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4=EF=BC=9A2021=E5=B9=B46=E6=9C=885=E6=97=
=A5(=E6=98=9F=E6=9C=9F=E5=85=AD) 00:21
=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9AYang Li <yang.lee@linux.alibaba.com>; j=
dmason <jdmason@kudzu.us>
=E6=8A=84=E3=80=80=E9=80=81=EF=BC=9Adave.jiang <dave.jiang@intel.com>; alle=
nbh <allenbh@gmail.com>; linux-ntb <linux-ntb@googlegroups.com>; linux-kern=
el <linux-kernel@vger.kernel.org>
=E4=B8=BB=E3=80=80=E9=A2=98=EF=BC=9ARe: [PATCH 2/2] NTB: Fix an error code =
in ntb_msit_probe()




On 2021-06-04 4:20 a.m., Yang Li wrote:
> When the value of nm->isr_ctx is false, the value of ret is 0.
> So, we set ret to -ENOMEM to indicate this error.
>=20
> Clean up smatch warning:
> drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing error
> code 'ret'.
>=20
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/ntb/test/ntb_msi_test.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_t=
est.c
> index 7095ecd..5f9e0be 100644
> --- a/drivers/ntb/test/ntb_msi_test.c
> +++ b/drivers/ntb/test/ntb_msi_test.c
> @@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client,=
 struct ntb_dev *ntb)
>   if (ret)
>    goto remove_dbgfs;
> =20
> - if (!nm->isr_ctx)
> + if (!nm->isr_ctx) {
> +  return -ENOMEM;
>    goto remove_dbgfs;

I think you made a typo here. You probably meant ret =3D -ENOMEM.

Thanks,

Logan

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/f39ea413-ac8a-430a-ba3d-9c197b3584ba.yang.lee%40linux.alibaba.com=
.

------=ALIBOUNDARY_78408_7f4bf1157940_60bdb573_d3cfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"__aliyun_email_body_block"><div  style=3D"clear:both;"><span =
 style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#0=
00000;">Hi,</span></div><div  style=3D"clear:both;"><span  style=3D"font-fa=
mily:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">I&nbsp;ha=
ve&nbsp;sent&nbsp;a&nbsp;V2&nbsp;patch.&nbsp;</span></div><div  style=3D"cl=
ear:both;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-siz=
e:14.0px;color:#000000;"><br ></span></div><div  style=3D"clear:both;"><spa=
n  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:=
#000000;">Thanks for&nbsp;your&nbsp;review.</span></div><blockquote  style=
=3D"margin-right:.0px;margin-top:.0px;margin-bottom:.0px;"><div  style=3D"c=
lear:both;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-si=
ze:14.0px;color:#000000;">-------------------------------------------------=
-----------------</span></div><div  style=3D"clear:both;"><span  style=3D"f=
ont-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E5=
=8F=91=E4=BB=B6=E4=BA=BA=EF=BC=9ALogan Gunthorpe &lt;logang@deltatee.com&gt=
;</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahom=
a,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E5=8F=91=E9=80=81=
=E6=97=B6=E9=97=B4=EF=BC=9A2021=E5=B9=B46=E6=9C=885=E6=97=A5(=E6=98=9F=E6=
=9C=9F=E5=85=AD) 00:21</span></div><div  style=3D"clear:both;"><span  style=
=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;=
">=E6=94=B6=E4=BB=B6=E4=BA=BA=EF=BC=9AYang Li &lt;yang.lee@linux.alibaba.co=
m&gt;; jdmason &lt;jdmason@kudzu.us&gt;</span></div><div  style=3D"clear:bo=
th;"><span  style=3D"font-family:Tahoma,Arial,STHeiti,SimSun;font-size:14.0=
px;color:#000000;">=E6=8A=84=E3=80=80=E9=80=81=EF=BC=9Adave.jiang &lt;dave.=
jiang@intel.com&gt;; allenbh &lt;allenbh@gmail.com&gt;; linux-ntb &lt;linux=
-ntb@googlegroups.com&gt;; linux-kernel &lt;linux-kernel@vger.kernel.org&gt=
;</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahom=
a,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;">=E4=B8=BB=E3=80=80=
=E9=A2=98=EF=BC=9ARe: [PATCH 2/2] NTB: Fix an error code in ntb_msit_probe(=
)</span></div><div  style=3D"clear:both;"><span  style=3D"font-family:Tahom=
a,Arial,STHeiti,SimSun;font-size:14.0px;color:#000000;"><br ></span></div><=
br ><br ><br >On&nbsp;2021-06-04&nbsp;4:20&nbsp;a.m.,&nbsp;Yang&nbsp;Li&nbs=
p;wrote:<br >&gt;&nbsp;When&nbsp;the&nbsp;value&nbsp;of&nbsp;nm-&gt;isr_ctx=
&nbsp;is&nbsp;false,&nbsp;the&nbsp;value&nbsp;of&nbsp;ret&nbsp;is&nbsp;0.<b=
r >&gt;&nbsp;So,&nbsp;we&nbsp;set&nbsp;ret&nbsp;to&nbsp;-ENOMEM&nbsp;to&nbs=
p;indicate&nbsp;this&nbsp;error.<br >&gt;&nbsp;<br >&gt;&nbsp;Clean&nbsp;up=
&nbsp;smatch&nbsp;warning:<br >&gt;&nbsp;drivers/ntb/test/ntb_msi_test.c:37=
3&nbsp;ntb_msit_probe()&nbsp;warn:&nbsp;missing&nbsp;error<br >&gt;&nbsp;co=
de&nbsp;'ret'.<br >&gt;&nbsp;<br >&gt;&nbsp;Reported-by:&nbsp;Abaci&nbsp;Ro=
bot&nbsp;&lt;abaci@linux.alibaba.com&gt;<br >&gt;&nbsp;Signed-off-by:&nbsp;=
Yang&nbsp;Li&nbsp;&lt;yang.lee@linux.alibaba.com&gt;<br >&gt;&nbsp;---<br >=
&gt;&nbsp;&nbsp;drivers/ntb/test/ntb_msi_test.c&nbsp;|&nbsp;4&nbsp;+++-<br =
>&gt;&nbsp;&nbsp;1&nbsp;file&nbsp;changed,&nbsp;3&nbsp;insertions(+),&nbsp;=
1&nbsp;deletion(-)<br >&gt;&nbsp;<br >&gt;&nbsp;diff&nbsp;--git&nbsp;a/driv=
ers/ntb/test/ntb_msi_test.c&nbsp;b/drivers/ntb/test/ntb_msi_test.c<br >&gt;=
&nbsp;index&nbsp;7095ecd..5f9e0be&nbsp;100644<br >&gt;&nbsp;---&nbsp;a/driv=
ers/ntb/test/ntb_msi_test.c<br >&gt;&nbsp;+++&nbsp;b/drivers/ntb/test/ntb_m=
si_test.c<br >&gt;&nbsp;@@&nbsp;-369,8&nbsp;+369,10&nbsp;@@&nbsp;static&nbs=
p;int&nbsp;ntb_msit_probe(struct&nbsp;ntb_client&nbsp;*client,&nbsp;struct&=
nbsp;ntb_dev&nbsp;*ntb)<br >&gt;&nbsp;&nbsp;&nbsp;if&nbsp;(ret)<br >&gt;&nb=
sp;&nbsp;&nbsp;&nbsp;goto&nbsp;remove_dbgfs;<br >&gt;&nbsp;&nbsp;<br >&gt;&=
nbsp;-&nbsp;if&nbsp;(!nm-&gt;isr_ctx)<br >&gt;&nbsp;+&nbsp;if&nbsp;(!nm-&gt=
;isr_ctx)&nbsp;{<br >&gt;&nbsp;+&nbsp;&nbsp;return&nbsp;-ENOMEM;<br >&gt;&n=
bsp;&nbsp;&nbsp;&nbsp;goto&nbsp;remove_dbgfs;<br ><br >I&nbsp;think&nbsp;yo=
u&nbsp;made&nbsp;a&nbsp;typo&nbsp;here.&nbsp;You&nbsp;probably&nbsp;meant&n=
bsp;ret&nbsp;=3D&nbsp;-ENOMEM.<br ><br >Thanks,<br ><br >Logan</blockquote>=
<div ><br ></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/f39ea413-ac8a-430a-ba3d-9c197b3584ba.yang.lee%40linux.=
alibaba.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.c=
om/d/msgid/linux-ntb/f39ea413-ac8a-430a-ba3d-9c197b3584ba.yang.lee%40linux.=
alibaba.com</a>.<br />

------=ALIBOUNDARY_78408_7f4bf1157940_60bdb573_d3cfe--


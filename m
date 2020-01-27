Return-Path: <linux-ntb+bncBDAKNI7RQYNRBZVLXTYQKGQEMCE5YNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B2C14A860
	for <lists+linux-ntb@lfdr.de>; Mon, 27 Jan 2020 17:55:02 +0100 (CET)
Received: by mail-ed1-x540.google.com with SMTP id m21sf7536989edp.14
        for <lists+linux-ntb@lfdr.de>; Mon, 27 Jan 2020 08:55:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580144102; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxxVNf/Yz4+GDat3Bqqni/lrchrLgMaUA/QReawbkUiOCGxilBx5BniHoTleXYsZD1
         GSn+ULiunmFpiszmQHGADmkdUSY9zKFPTOSDBx96LrObtwq5xwvxMQ6ZzNoPSCtXiQCP
         Z5vwepFUOQb5YJvKh2EWq22oLgRMzhnN/mAjprU9Fkaqc2K3TkM5wufT3A4s/rLF+5UM
         GhLTmpr4iKUZhOfDERZOOWyZ6C9F7T/2xUbRTg922XzBi31UlaUkXoSfIefjP+zXwYwR
         iH1HKoFxJx2HAf+i1rC2zmyr+bCEplw4nLVM2eX2VQ3j0KEN4xfrPbLtXQVwCvgKKZd4
         z+bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tjtcmiKlA6N4XC2G4dpSqiSENXFYldhUTKkOM9+M0JI=;
        b=P3jx160KqiivB6xrkqZvu5+gCU7RemptcdV8m8DjQGAfXWIotZZPYsb9ZTdRd8FQoh
         h56bLkTNLJjNJ9S//O8lfB5QZQrGI8cnURTy/C7CkSHok/Ux+OVOJwbVWWme/xFtBEL6
         uw9TUq9Tx8w8xDXWEpIJGv8TQ2w8PY0GBbYbFk2vE+OWNthCfqup+9SOxMTdQugNfV9r
         mnkMzR9QluX/AfOcdNFY1zq/TYHY6gcqmnxwSO9OTYS+VNi+0oJHt31SCaTSb9goGYMb
         8CIAq+b+nLk6OyWOIgoBmzCHwGVzvof/V6NDOnDADUfegMsDaEjmdc5YjYyjm2gxOarb
         xmpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5H0A6eI;
       spf=pass (google.com: domain of ruimartinsmulti04@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ruimartinsmulti04@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tjtcmiKlA6N4XC2G4dpSqiSENXFYldhUTKkOM9+M0JI=;
        b=lWGkg/1kPUPnh0/IEYOZJvAx1TJp3oHbxzwbQ2rIyy8MRdsK07TBqODXl544xjcDzu
         NoOktRuDam4ll46+EhtCIqmeaNYsYSiDa6NlTIzz0Cn5uddFrBq5m3NN76QjgMzYQWdj
         U1rLnP2ZljfngiDoiwKAHKOZapKwAbkTuM+hCOXtF8S55OSnRGUNNxC+c5kxl6jnVR5y
         328XL1zX2VeXaj1Ss6+3H+hXXgEnLBuXx5SgFvCo77o2YLEhoMIp0w2gGuVdwcgwuIO/
         oMG4FDuQv0QC2yOEccyDIHL/zJGR/p/PKA5RBDenDYYS5s6AGIzBs2HJ3w3X4m045z47
         53hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tjtcmiKlA6N4XC2G4dpSqiSENXFYldhUTKkOM9+M0JI=;
        b=JJo2yQoC5Ji+ydPTBNNBo4I5dk04I2j8IbWOfokzxcbMxeExojMvySLNtQ9xO2vdpu
         gdQD6X3xQDXnpMRzEFcMBtyxhaaeKuhAmuAoGpOaaWKKYiu6FHvWhHbmmVK3awnuqhtj
         C4KuagwoRty8eociuvfPCtJv9RZnEAPgNBLi92gbkOAkz2PjxDp16fzXj4eE5ID90oYt
         9vO74IE4AFTOjEdNuz7+y1CdhBRUwNKdzlY/K006XkltpXN4jcx6l8SscOqZ/MwD13SO
         7u061vuLHR6Lcxvn0Ya0SvidaUq4d6MQEbi23yebhTgrwFS7qM0cG4JFKUzUzhfTnNsJ
         QHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tjtcmiKlA6N4XC2G4dpSqiSENXFYldhUTKkOM9+M0JI=;
        b=WqFdcyguzYjTXZb+l8EnyEAecs6ax6kkW7rE65YGtlnUU59BEeSwO0i9EH2Fxss5At
         2ApHSnSPFkR8DNenUo+5PKJ8BPoVNGPpoJk0pmaZEHM60WkVXtp0MlAfrmMoqcJvaMz4
         SXWHtyOIIMstf3ZMZ7MP5VqB5bqkp7XFSXMYHDglIkE31X++1DzKfmQc8oQZMdHwPsAf
         J+mRAYGk1g53beTwTZAzkMjI3x0Tx1tEKhbc+DYpWRn5ytTL2JA692+d/avyjTOwNK+r
         DlcjiO5xuLo/4G8egt9csvd6FweauGPPN/qE7zbLgpXQdayNuqYMZh08DHrc3EZsFwVA
         8EfA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUOKaFif+H8H051hPjOUHNxWlKDmel9/XVeEJlQbDodl39mLkn4
	QAmcF9KgqrFx7IACNrPT6/Y=
X-Google-Smtp-Source: APXvYqwnbFSx5bJvGUUAasAKhYy9sMU1wzYIS6/H/4XQynQNUG4mOmZtu/I+0zpp4niwdrYjq0OezQ==
X-Received: by 2002:a17:906:66c9:: with SMTP id k9mr14568918ejp.341.1580144102676;
        Mon, 27 Jan 2020 08:55:02 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:bfe7:: with SMTP id vr7ls3574356ejb.1.gmail; Mon, 27
 Jan 2020 08:55:02 -0800 (PST)
X-Received: by 2002:a17:907:2165:: with SMTP id rl5mr9487258ejb.193.1580144102124;
        Mon, 27 Jan 2020 08:55:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580144102; cv=none;
        d=google.com; s=arc-20160816;
        b=deuVdFA3NCfhmmxrDQP8vGPnBxbSW3SOU9djaE/drDDoQKkd4tp/bE9NyexiT4jjy7
         Ewa4ropS9X/sbOCPZr8zuw/LvNQWWOM81hCcdj2JTET6qr7GrTQvj7G5di0EzcChgdbr
         92Bgwk1pe0oplTnAMj/CRHWpLX1w4QFJ2fVXUE5aistZeYkB0CL58H7jnl9xq8R/uM0x
         ynrKB9Fr/qpT05MPo5Kprv1t3sFXEUJZR0x5eTOCcBmWL4WqTf4Pszo2mVHlPAB6KMIm
         /g5D2q/mbtAqHLqSeIorewVtmLggnGX6yTV7PqMdx1kAolA3Si352z+kPkPWrbp9JtCL
         DHKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=RTMgEr2w1kBTcW690ES0psOT609A998iL3W5re6VOh0=;
        b=LACl8jFVbs3AApQACw/Ig3BpHZF+TmkKICXMMjBm2k+4xFR4Y+Prj04hvBFKg0Z9nn
         tFyrV+A3PoczW4H2r2hBR9RgrisfrQPuZ+9cSIbYjfclRALXnPRF+EVekfU5YoPzgMth
         ejKdzSjNhIH9lH/J133x2LiPcHfdHm42mcy0DgNIEAITdGrk01wmSqmg1/drx4B2INXv
         6c/OYhrN9ULsEbeT0ZT1KgQQWOQ5BdSHxXZVq4b4XlG62EzA0ak3ZdR50mfWKdh0U5bd
         1nGAIDna+RACHakoPqdnP7oZ2lwKo19zBolp6DnBCZ56s1jCJnyb8SGZQA2vzzUcek+W
         dNeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5H0A6eI;
       spf=pass (google.com: domain of ruimartinsmulti04@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ruimartinsmulti04@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id ba12si608859edb.3.2020.01.27.08.55.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2020 08:55:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ruimartinsmulti04@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id t23so7512126wmi.1
        for <linux-ntb@googlegroups.com>; Mon, 27 Jan 2020 08:55:02 -0800 (PST)
X-Received: by 2002:a7b:c249:: with SMTP id b9mr7514wmj.74.1580144101665; Mon,
 27 Jan 2020 08:55:01 -0800 (PST)
MIME-Version: 1.0
References: <19a1e0b8-58dc-3e3a-36de-4be35e808cc3@amd.com> <654bb416-65a5-4d1b-b7f4-ab00ab78a7c0@googlegroups.com>
In-Reply-To: <654bb416-65a5-4d1b-b7f4-ab00ab78a7c0@googlegroups.com>
From: Rui Alexandre <ruimartinsmulti04@gmail.com>
Date: Mon, 27 Jan 2020 16:54:48 +0000
Message-ID: <CAHSv_=P=1EyUvRrXoZoyPr7QccH9GJ--dqv=QY7LB75_oymjzg@mail.gmail.com>
Subject: Re: unsubscribe linux-ntb
To: linux-ntb <linux-ntb@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000dfafbf059d21f7ff"
X-Original-Sender: ruimartinsmulti04@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=f5H0A6eI;       spf=pass
 (google.com: domain of ruimartinsmulti04@gmail.com designates
 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=ruimartinsmulti04@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000dfafbf059d21f7ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok unsubctisbeemee.fuuckkkk you


A quinta, 23/01/2020, 15:07, <ruimartinsmulti04@gmail.com> escreveu:

> quero cancelar a subscri=C3=A7ao
>
>
> quinta-feira, 19 de Dezembro de 2019 =C3=A0s 23:21:46 UTC, Gary R Hook es=
creveu:
>>
>> unsubscribe linux-ntb
>>
> --
> You received this message because you are subscribed to a topic in the
> Google Groups "linux-ntb" group.
> To unsubscribe from this topic, visit
> https://groups.google.com/d/topic/linux-ntb/BMHHn5DgKgc/unsubscribe.
> To unsubscribe from this group and all its topics, send an email to
> linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/linux-ntb/654bb416-65a5-4d1b-b7f4-ab00a=
b78a7c0%40googlegroups.com
> <https://groups.google.com/d/msgid/linux-ntb/654bb416-65a5-4d1b-b7f4-ab00=
ab78a7c0%40googlegroups.com?utm_medium=3Demail&utm_source=3Dfooter>
> .
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAHSv_%3DP%3D1EyUvRrXoZoyPr7QccH9GJ--dqv%3DQY7LB75_oymjzg%40mail.=
gmail.com.

--000000000000dfafbf059d21f7ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok unsubctisbeemee.fuuckkkk you=C2=A0<div dir=3D"auto"><b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">A quinta, 23/=
01/2020, 15:07,  &lt;<a href=3D"mailto:ruimartinsmulti04@gmail.com">ruimart=
insmulti04@gmail.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr">quero cancelar a subscri=C3=A7ao<div><br><br>quinta-fe=
ira, 19 de Dezembro de 2019 =C3=A0s 23:21:46 UTC, Gary R Hook escreveu:<blo=
ckquote class=3D"gmail_quote" style=3D"margin:0;margin-left:0.8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">unsubscribe linux-ntb
<br></blockquote></div></div>

<p></p>

-- <br>
You received this message because you are subscribed to a topic in the Goog=
le Groups &quot;linux-ntb&quot; group.<br>
To unsubscribe from this topic, visit <a href=3D"https://groups.google.com/=
d/topic/linux-ntb/BMHHn5DgKgc/unsubscribe" target=3D"_blank" rel=3D"norefer=
rer">https://groups.google.com/d/topic/linux-ntb/BMHHn5DgKgc/unsubscribe</a=
>.<br>
To unsubscribe from this group and all its topics, send an email to <a href=
=3D"mailto:linux-ntb+unsubscribe@googlegroups.com" target=3D"_blank" rel=3D=
"noreferrer">linux-ntb+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/654bb416-65a5-4d1b-b7f4-ab00ab78a7c0%40googlegroups.co=
m?utm_medium=3Demail&amp;utm_source=3Dfooter" target=3D"_blank" rel=3D"nore=
ferrer">https://groups.google.com/d/msgid/linux-ntb/654bb416-65a5-4d1b-b7f4=
-ab00ab78a7c0%40googlegroups.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAHSv_%3DP%3D1EyUvRrXoZoyPr7QccH9GJ--dqv%3DQY7LB75_oym=
jzg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups=
.google.com/d/msgid/linux-ntb/CAHSv_%3DP%3D1EyUvRrXoZoyPr7QccH9GJ--dqv%3DQY=
7LB75_oymjzg%40mail.gmail.com</a>.<br />

--000000000000dfafbf059d21f7ff--

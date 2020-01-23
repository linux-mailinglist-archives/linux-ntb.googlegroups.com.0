Return-Path: <linux-ntb+bncBDAKNI7RQYNRBL7NU3YQKGQE5EPOYSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A137146C4D
	for <lists+linux-ntb@lfdr.de>; Thu, 23 Jan 2020 16:07:30 +0100 (CET)
Received: by mail-yw1-xc3f.google.com with SMTP id v126sf2302256ywf.7
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Jan 2020 07:07:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OXDo5PWR9+UGaRnbD7GhRKUJG76kER458wl9uIOTPHg=;
        b=oje8rxzIlAj/rOZMlxBVx6s34TGy1fQS8sAS+ASS5eoJNcdXvc0IkFxr5mKl4AYIWn
         W7ERrv8p1/3Indf1rnZiFDg+n3hTNSdlAvQifPQUi4o0Xl7dLrG6H/cu+A3BRU5lJ3JR
         5CattbPQjSqrxxiIbPcmNck5P/E9URZ6viW5XnDeeBbl6olWgg3RRcpmx+WUNlnV1TmL
         d/Knvjhy6WksdYUEnT6RiqBIloxPaRZRmGMtgxkH8UpjoNqeIw1VKUXlpvAR08n9HH11
         akjtqokhCNtJmLFqNxL+wyFDiSwwX5+AF0g71KW6VYk1o76gn/7DJH4BSN/jB5Xpvlf2
         1mxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OXDo5PWR9+UGaRnbD7GhRKUJG76kER458wl9uIOTPHg=;
        b=EV3Ih2uVRfrLRaVT1PNhEbpnciiT29moqpFYp1Lz7A/MByYvjfMV5LcvIdx15TxaiE
         XUtEBjf2txYJf+PNpBbGZ/WeAcdWqpX7HGLhYzR5gj9TPbH+wYCqnlxhGSOYNMtikWKc
         BjE0YN+4aOlDwWZOkRrB3Y0qA10O0jfQc90dqXn0xLJdigoZtrfCmuu13U1w2X7hcqKr
         dgA1rNfJGnptBzwZfZTjUIBf4cd/F7gDtwRF0S5xEg67wkivQxMXdX5QQGDlpmh9xbFA
         9lCJ6Vh7WLlUuc61yFdPim+xQ3nYOtrbH5/mBogBopETAixVBKi64MGWsCVyBgJG6FFm
         WO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OXDo5PWR9+UGaRnbD7GhRKUJG76kER458wl9uIOTPHg=;
        b=QzDtzcJQoh6IXIlJ5R/rZ5eaY5uvGsejAv4oSB4VL1mvcHC/HErH1Et7yTPwjcOAeM
         qzGX3wsIf727nv2/56YStAWVj74cKccXNZv8B0nByHPt/4plFfI3z1tmlB2VPzvf0hgK
         xdsOJAXJXW2z/eBytLExxoNiBYbM3LW/MPzC+NBWvnUKGynCd2GX5NJ+d93MfveIldV9
         aoV5DoT6QGGQTybvjXbe4NmUVXhm9x7wYFR6A27kBowt/kh/aGp6O4A8ELiceti6bw6V
         LIeX28jtPoYXkTh2XQ1dhRBcslw9Niui2s+sC78YCmUe+J7shRU+Sl2G6z+vV7sopQaA
         KLlQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVrgS3Ymi4Lyd5jLhtORY5K0k3SL8ijbtwl2XxYVby8+k8vI4tg
	8cPx/AvrUne4Fja3bN2jqkI=
X-Google-Smtp-Source: APXvYqzb89LD3SyzaE63Z+FU87HCjMyd2goZP0mrIjlUVUkp/2v5VfjyiGO7NXIHNmX3WCbXx04NTw==
X-Received: by 2002:a5b:489:: with SMTP id n9mr11139308ybp.395.1579792047618;
        Thu, 23 Jan 2020 07:07:27 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:2f58:: with SMTP id v85ls7285732ywv.11.gmail; Thu, 23
 Jan 2020 07:07:27 -0800 (PST)
X-Received: by 2002:a81:2593:: with SMTP id l141mr6800855ywl.243.1579792047178;
        Thu, 23 Jan 2020 07:07:27 -0800 (PST)
Date: Thu, 23 Jan 2020 07:07:26 -0800 (PST)
From: ruimartinsmulti04@gmail.com
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <654bb416-65a5-4d1b-b7f4-ab00ab78a7c0@googlegroups.com>
In-Reply-To: <19a1e0b8-58dc-3e3a-36de-4be35e808cc3@amd.com>
References: <19a1e0b8-58dc-3e3a-36de-4be35e808cc3@amd.com>
Subject: Re: unsubscribe linux-ntb
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2883_763388988.1579792046259"
X-Original-Sender: ruimartinsmulti04@gmail.com
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

------=_Part_2883_763388988.1579792046259
Content-Type: multipart/alternative; 
	boundary="----=_Part_2884_609428338.1579792046259"

------=_Part_2884_609428338.1579792046259
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

quero cancelar a subscri=C3=A7ao


quinta-feira, 19 de Dezembro de 2019 =C3=A0s 23:21:46 UTC, Gary R Hook escr=
eveu:
>
> unsubscribe linux-ntb=20
>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/654bb416-65a5-4d1b-b7f4-ab00ab78a7c0%40googlegroups.com.

------=_Part_2884_609428338.1579792046259
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">quero cancelar a subscri=C3=A7ao<div><br><br>quinta-feira,=
 19 de Dezembro de 2019 =C3=A0s 23:21:46 UTC, Gary R Hook escreveu:<blockqu=
ote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;border-left=
: 1px #ccc solid;padding-left: 1ex;">unsubscribe linux-ntb
<br></blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/654bb416-65a5-4d1b-b7f4-ab00ab78a7c0%40googlegroups.co=
m?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid=
/linux-ntb/654bb416-65a5-4d1b-b7f4-ab00ab78a7c0%40googlegroups.com</a>.<br =
/>

------=_Part_2884_609428338.1579792046259--

------=_Part_2883_763388988.1579792046259--

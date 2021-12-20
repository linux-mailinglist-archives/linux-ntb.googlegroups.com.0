Return-Path: <linux-ntb+bncBCYMHO6M7UJBB7FIQCHAMGQE2MWKQ2Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1DE47A48B
	for <lists+linux-ntb@lfdr.de>; Mon, 20 Dec 2021 06:28:29 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id j26-20020adfb31a000000b001a2356afd4fsf3300409wrd.21
        for <lists+linux-ntb@lfdr.de>; Sun, 19 Dec 2021 21:28:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639978109; cv=pass;
        d=google.com; s=arc-20160816;
        b=NPAp10WDIkHzFDd0GWvt5QDzCEDulbgVWf8Zjo4u1xtHiIteo13LpUgINbr6/M4z8U
         wQsnWtyFbBcnmExxQWwXjBDzyji2VFVRenNeFaZQa14UHAPKgGYfIlpHs5vlHFslTAg8
         z/tzV1GIgTsxLrx2WUS1oKBrg94tblsuQx7fKwPWToW+vSHqTH7FeN2N0u2p/bWiQhlw
         Go9hL2XOPFkuSF/+B0rA7k8YuGZPKerykN2vs3mhmFWmUAEfvBzd6JPBCyH0BayYzwBS
         N2/jk5d0DKhisu3+Xshsl/MEQ2Jt1S15NkMrE44fI/xlbRFb16lzaYkO/9P6SeHFBJhV
         vZmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=i4xg0AK/8rkS5Lm4bAA91dXEGE8kyTMQBD9b+hlzc7E=;
        b=d4cVvBXvxftS+RKveV3uS/w9vNLllzk17RundBORYUMnFPvMv0tY/5Gsn2EiSkejNj
         ByGNvHqM03jtFkSIs/li3hBuIAJcBAFNNldu1Lei6Ks+HWGLxS/s+3mrjC2flDEhX5js
         Fjo3GDYUizrqh/wHRyxqU5Gvk57Ey/37CwSbd94d+lAtx3U3CcRYoXDJbfJlRwxqQKGm
         0DYl/QlEr8FGDODmbHdA8bHmYXw8bj6DXQkjiB52SFE+im3qLg+IphNN/2NZ+/YXrHIt
         Ss677ssbmIo+s0wdqhna97l3AxvW1RbvqEDmj2Vo1sQpcwYvlhTbQJGr3OkGIM1K5Kn6
         o8yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qRempdIZ;
       spf=pass (google.com: domain of williams147jessy@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=williams147jessy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4xg0AK/8rkS5Lm4bAA91dXEGE8kyTMQBD9b+hlzc7E=;
        b=C2OyNUcWO2hkrKPKE7ksJUMojF7+xlRyYqkYN+yyQv+8Ww7Vt0WZ7UDPToM18Kq+U8
         VCwffCLgso6AHKS/FQ+p8OybI3+SuJ92HKMzipBHEiwKVuM+0mEHpClIl6ZYtggUF8Gc
         wE88nItLn8gYKsW4KXZOVx4r30+1BDr8rRkkHu9DVCXx7PQuVndCICzwQedTVIi+0RAW
         EX80BVqGY618UDzRN1NZCmaVbAJIiOWUDHWdIv+8ff0yGLGqg3Jx3Z6IhCQv7NqsmThT
         IP+2J9dFo/XI2cF3dJbVBZBp/xRVVaw64SPYu2WRDlvSqVRqx9DwXutNlPX3zk+ozVBS
         WH/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i4xg0AK/8rkS5Lm4bAA91dXEGE8kyTMQBD9b+hlzc7E=;
        b=fFO+d+b4btBpWgPGEkb0IccJoWqD6xJd0DK2b9bJd2cI6mIy7Hb4IMz+ZDmJkmq/jb
         xEDzxefDkn67oShO3rQA2EMHY+VWfX5NuaQeHRvtqL51jBC5R6l3uiBnDCgqo+ocyUGz
         AzgAoNGm3bCHSdn8thzR44VXEKXa0M7ifG9ewgE8NLbo/SW7R9o/Wd44KPhmzRA8BWsE
         k5geZJIsf9W9pe1DruO9+o3+RuxCWbE8dwIZsW0iXjuIsSZr5hZM2HMLtOxU3ADSDyOw
         Cde+nICo8TwOT0zHqh+MPXRv+A281uypv7egn8wwAVLf8c2S9sfmjhaz+wU5qXOsFB1Y
         HkSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i4xg0AK/8rkS5Lm4bAA91dXEGE8kyTMQBD9b+hlzc7E=;
        b=24P+S7TTVJf/EBPjI1ZeQlWLP7b4uBUCG55wRaP59fV4efmNAAp3uDRouPawaCUjUb
         BanEhHabTLDRKEAh/K+XUHhq24GY7HFIO2BqDq/Bkh3ImRJv2OMDc9y6ROhvktEqRDZ9
         pf+HgQ1kgAG0048EMulNUGVcF4xaq3QBUd9nm3VC3c9cvHb0Hg8iwhKJYo9WQQp8rmA+
         y9vD2MG217Tj71PAQFBiK2oWKZqPk4CUb8htqHwecfl4mOKikR7h4VnF05R7pXUQtLqV
         ysQmacS5wVhQufjZdhFFi/OxCFqVmnKWUfpIyABhFgGjmt1StRpenOmxiMkAv+pwNcpV
         NoQg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530TPgGmccS7T4ALLwZnPDM3ZQP3Z0qxAylbBBfHRPzlFVK1pqvr
	im3GkEb88Z1O0WvBZcEAlZw=
X-Google-Smtp-Source: ABdhPJweVn6jXagWgU1U4v8T4nZWpvW2svL6OtCoSo0vcHoorM6Xhr3ezssRSa9IzktdgW04O1pATw==
X-Received: by 2002:a05:6000:1241:: with SMTP id j1mr12262327wrx.601.1639978109017;
        Sun, 19 Dec 2021 21:28:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:a4cc:: with SMTP id h12ls2551365wrb.2.gmail; Sun, 19 Dec
 2021 21:28:28 -0800 (PST)
X-Received: by 2002:a5d:47a3:: with SMTP id 3mr2928022wrb.583.1639978108243;
        Sun, 19 Dec 2021 21:28:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1639978108; cv=none;
        d=google.com; s=arc-20160816;
        b=jx3I1KffQtnUt0xauH5GmT0fIgBlyj+e668yb9tlw/PIaNKQLU5C+HPjX26D6s03yi
         eV1VzRQRwUJLjx4v4Ex5S45o2MZsIxE8i+iBP5k/v+kn1bLEaTBVCcqj1P6mQKV+44if
         XKTYHBKfvsGnFpahIXQm8sGby0zU6d+WO5QDbN8JYS3nWqdKAFzBdA7NsyOCIslgxoh+
         +ePh9Ud3hqvfSa5lD30zYxDQZGiW2nKW9l+EYI4Whx0Uygb31EqoD0UQUalXIOPx4EZm
         SDOuboTh09Zu922FQjOcbmeTy3n/9F+fIE7Ihj49Zhza70nx8LZKtutWZjQ7ysGFLJTJ
         F+7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ObT+p3H1cSr2W+fFABhJrko1t5ffs1xovBkmDU8YcYs=;
        b=ETZi4rGvZtTkzSY7Olqnn5434v8y9vt1LkuAdozIstrHCXLe5hEpD21kHksacUmIPx
         3VM3BpvWpE97hJGbrCaYGNXe+9vWPY/6rYrziFsLYfgRRx0vq1k1/u9rrV8hDejj7Y65
         4INZXwed+CEU3au/EoGdNmC2QTxzuY8a9BA3h8X70arsWilsf/0ET0W36ZeQM5Lq0q+M
         kRg1SqLqZQ7EQu2iYV68CBpj2Sz1Stiy2BuJWI7aoZV8xQ7Dkw+b4JDZmVcJwzUrpmts
         Lg+qBL4PWzo8rIdHNOsec2X5T4lILgY8bYdp0ZcG8d6r/5WVK6SbZ43U8pmsOD/y2TV5
         k+7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=qRempdIZ;
       spf=pass (google.com: domain of williams147jessy@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=williams147jessy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id z16si348202wmp.1.2021.12.19.21.28.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Dec 2021 21:28:28 -0800 (PST)
Received-SPF: pass (google.com: domain of williams147jessy@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id r17so17282638wrc.3
        for <linux-ntb@googlegroups.com>; Sun, 19 Dec 2021 21:28:28 -0800 (PST)
X-Received: by 2002:adf:d1e2:: with SMTP id g2mr12038117wrd.362.1639978107993;
 Sun, 19 Dec 2021 21:28:27 -0800 (PST)
MIME-Version: 1.0
From: Williamsn Jessy <williams147jessy@gmail.com>
Date: Mon, 20 Dec 2021 06:28:16 +0100
Message-ID: <CAJm+zzNXZdHD1zA+LsSJ+DgYAfRzFDLQLN8yHnuTZNHX+VZRtg@mail.gmail.com>
Subject: HELLO
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="00000000000090ffe605d38d28bb"
X-Original-Sender: williams147jessy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=qRempdIZ;       spf=pass
 (google.com: domain of williams147jessy@gmail.com designates
 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=williams147jessy@gmail.com;
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

--00000000000090ffe605d38d28bb
Content-Type: text/plain; charset="UTF-8"

 hello again...
no response from you yet
is everything ok?.... get back to me quickly
 its urgent

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJm%2BzzNXZdHD1zA%2BLsSJ%2BDgYAfRzFDLQLN8yHnuTZNHX%2BVZRtg%40mail.gmail.com.

--00000000000090ffe605d38d28bb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0hello again...<div>no response=C2=A0from you yet</di=
v><div>is everything ok?.... get back to me quickly</div><div>=C2=A0its urg=
ent=C2=A0</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CAJm%2BzzNXZdHD1zA%2BLsSJ%2BDgYAfRzFDLQLN8yHnuTZNHX%2B=
VZRtg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/linux-ntb/CAJm%2BzzNXZdHD1zA%2BLsSJ%2BDgYAfRzFDLQLN8y=
HnuTZNHX%2BVZRtg%40mail.gmail.com</a>.<br />

--00000000000090ffe605d38d28bb--

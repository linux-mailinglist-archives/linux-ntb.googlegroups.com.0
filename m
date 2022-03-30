Return-Path: <linux-ntb+bncBCFMFUMV7UORB3MDSGJAMGQELSUJDEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6F74EBFE9
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Mar 2022 13:41:34 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id u29-20020ac251dd000000b0044a245bcc1asf6366785lfm.7
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Mar 2022 04:41:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1648640494; cv=pass;
        d=google.com; s=arc-20160816;
        b=0vRrfw2R2abBZdUoAxgjFQfkDx+C2XFAOhW4pLUlH24QSG6mHOHqG9kCg1PDrpjbHb
         xWr9bbhl8iAVj0ZAFOsyCzPkD+PUGGDL/buyKwqMQAmYoaG/dvRiECXeKgSWHxIyG/nx
         Fnad3jnsWXtF0v05O+f61TO/p9FwLrGWP5qi6FpBVqCOLvhr5j25pIJm6LRuJIUcUKKn
         yyflCvN55HRraPTmrHcPUSk8mE5Ses7E+yV/PQ6H+f2JoGTfqbuoCM0K5D26Q5Axvyct
         koIPW2llPQBVwigj4J2fkIYo+O2kqLa/oaFiwSRxuG1NBREQrbSyDvsmEsRCT30kmfcb
         WUkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=H4uw5ueS/KAHlDeFvkcdynuFqUIHmriZyObzaJgHz9o=;
        b=r44NCEWL6taPzkGH51t8OtqWtC1T1q7GMUwbMRuGwbGd8ErMuVw0nqO1nfbGW9u7WL
         1Yy0BWowyd5qcKL+gUdz0Ypc7/IkAJMQc385uFqg1ZEhnjoZ25/iDut/ExCkFPffVsIP
         oJy+L5Y7vN8OhEzDFQh45Qe3vUYKY9k6mdykLdNM5eO9oi7x5OZ07h3cXSJLJiFeOJvp
         uOBm6wB9sJKaGfSoZi3J0D5PoWRf/PXt4NJoQF88cS4A9/dkFHhXNBKz/gyRhKcr1a7J
         36ap21liWAkYgsaR0Aru362nPd0iVmRyFkyzASfXAdRcbtYsVmwQgQAdytUYCPcI9gbU
         sGyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=pWMdOVQH;
       spf=pass (google.com: domain of fatiadjabao@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=fatiadjabao@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H4uw5ueS/KAHlDeFvkcdynuFqUIHmriZyObzaJgHz9o=;
        b=Zb3HDztB67k0pcH6VIMaH5BEan7qX0qzwh7wU2y9uepPIDxJMqp4K3wMiuNSHk6YMj
         /4Ag6Yflsa+B4BZJ7gKc7uYwp+qvVZs1w2d2myKVpJLHPJTpMkOPrR43pwIe8Ycv24Iw
         7wY0EwA2LL8zp/+RAlgJ+GbiNJMqzY18nowhLwE0K8oN4UvVuOkRHuVZxtV58S7oD8xZ
         lT+Xc6mNyIGs2Bl7GyYAErzt2pC43PRCKTTNMz20/6Il7YdiZ2mY2CXAQp8DPsGSmJBC
         1ROS5BLGQH6PKxvLEwvk+ly5BaI5iZcsSht+S1TUibn12DUoTYI+unrmIuDKVB9GnifP
         AlpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=H4uw5ueS/KAHlDeFvkcdynuFqUIHmriZyObzaJgHz9o=;
        b=btKvSLOtxbdjxDgibFn2+h+LK1Xs09Ayoo6jnwAjAOP7DVcebhripH7TofH02O9acL
         6qoSv6Kjezbm5A+Gu3GmVnJBPJg+qOkPnZscpWJE+Z7PUeUj9LXQHTo9moIPmy1w1U4Z
         82p6MZxToK3v9XIMt+K3HfgNHmefdZlCihVFEFjlru/HO30aCQyvLDsVT1mYxM8HWg1d
         5jSnHJws01NbzVq0tXiSyQMT8GG8eoqiWG1aDpf23pBDGQGm8WP3LXwW4/tdtqTHcX/9
         ePCP8ycUK8cnRZBR/MUzM8/RT0KR/e3rmqBj55VVFrIvvMYDdgyb3FlmD+aKNrnfXkyR
         vQsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=H4uw5ueS/KAHlDeFvkcdynuFqUIHmriZyObzaJgHz9o=;
        b=dORmVw2rLKN8zBI2zfNfasDqroL4cBXD7orUimP/a6W7TS8kwPxL9T95B08RLN95xT
         EN9ls1TQHkqgDccUFP543cVNIG/Xdb4udkDxQmGR8s8PEiZ+sec8OK+UKZuYZsyaKBZH
         CoCzJn9jZ+RfN/OH6KBB5gJW4GrdJYFAveNFSJg9hxSNHuj+vl3Q/ety8k5KusfvBZPp
         bjOTseYK7DPkhSZN5WolYhYDhtoJNldIGufr2idLpS4niaMkc5U9wHdwwXlqkSo4aQuh
         vYViuqpnYwGVg7jHgvpuyQo8XcCXfDsC+OZNcrsi9lRBoZNgdsUCKaxg4W+PoNAYxknV
         MvnA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532eisjXIoI7+POR+QVEzahXh3C2hjGaYOc30/kPh4Xbgv42V+JC
	pK3tnYd88+PGqLUye1wLxJ0=
X-Google-Smtp-Source: ABdhPJzGXJhkz0UpZFm8QUN+9OEHF1AfwWBYKIL7weAl8v3gFKKR4RwuCDIxouQLQCQkH9mBRhsegA==
X-Received: by 2002:a2e:87cf:0:b0:24a:8d47:f6e9 with SMTP id v15-20020a2e87cf000000b0024a8d47f6e9mr6301593ljj.497.1648640494130;
        Wed, 30 Mar 2022 04:41:34 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:6a08:0:b0:247:e311:8788 with SMTP id f8-20020a2e6a08000000b00247e3118788ls392690ljc.6.gmail;
 Wed, 30 Mar 2022 04:41:32 -0700 (PDT)
X-Received: by 2002:a2e:9545:0:b0:249:8221:86d9 with SMTP id t5-20020a2e9545000000b00249822186d9mr6468852ljh.137.1648640492756;
        Wed, 30 Mar 2022 04:41:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1648640492; cv=none;
        d=google.com; s=arc-20160816;
        b=cFQyrVBZPhf3nOH7zCBBolQaNtrCRGrk5MI6wyZao8XOWDolFIRTCjk55jLFvoxCq4
         F+UfYWEmzZEMxnBlOcL6mj7y3AaJ8WidkPhBw047m+RGC78t6/IRfGiTCTERyg6erSER
         1s8f3DwNJA5jDI5mzjyH6Ecue6Wd8B8gd8+s9USlunRhJW+QDX+Ide3ywfeAhmCyLRpd
         7nZxyjrPloUUswntY9+OMqhjSJk99W7mKPCGvN+oIIYom8dDuwYUtvSXzZ6jYkUFOPS4
         ReOqYAC5Pfj0qI3G4ncgwM4ocpKcr5+5VwHVQ1Q+dnyuHnvdMiAOY497+DvE4jDueSQK
         Eq2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=HPqVjh8hWlwEYDzK9hhcjBBW5XrQyA3JVa8I2R+dty0=;
        b=TxNeHE5ZPvMpJwPlcW8Uo5/oRydit99Y7+W64wMweJOkVZ2tI+XFBlASII4c+QYToN
         TTnPd3yGdHFrs24AMijtBRze1Tcsjy7RsncR5MSWdLD1e60W7vSqaHT34eU7hkVCo3e+
         vaKflzj56yJ7j5pv9t6JNxp6g0fBrkJElNPzYgclVJpPw6px+GiUKAYw7vogiQ+jguIc
         fzf9M9wdqlQeV9Jwaoan9q5H0kd4cy8XISQYG9upWz8kkKHOkn9AmCG4isXiCqfkqEz0
         wcqN+GZub3vQR2aO24pQhXO1UdPdofRZTi744p5RwuHw5LvWAem1QKgHJEWRI8OBOoEx
         Wbhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=pWMdOVQH;
       spf=pass (google.com: domain of fatiadjabao@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=fatiadjabao@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id q7-20020a056512210700b0044a693649b8si1167933lfr.5.2022.03.30.04.41.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 04:41:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of fatiadjabao@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Received: by mail-wm1-x32d.google.com with SMTP id n63-20020a1c2742000000b0038d0c31db6eso3284803wmn.1
        for <linux-ntb@googlegroups.com>; Wed, 30 Mar 2022 04:41:32 -0700 (PDT)
X-Received: by 2002:a05:600c:3c9f:b0:38c:6dc6:6de2 with SMTP id
 bg31-20020a05600c3c9f00b0038c6dc66de2mr4060378wmb.132.1648640492266; Wed, 30
 Mar 2022 04:41:32 -0700 (PDT)
MIME-Version: 1.0
From: Katie Higgins <higginsn769@gmail.com>
Date: Wed, 30 Mar 2022 04:41:22 -0700
Message-ID: <CACq-e2SsaA5MZWAzYE9wWLOmTxuVYwHy4DebmHPUJFqZ5mwihg@mail.gmail.com>
Subject: 
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="000000000000e7695e05db6e061c"
X-Original-Sender: higginsn769@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=pWMdOVQH;       spf=pass
 (google.com: domain of fatiadjabao@gmail.com designates 2a00:1450:4864:20::32d
 as permitted sender) smtp.mailfrom=fatiadjabao@gmail.com;       dmarc=pass
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
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

--000000000000e7695e05db6e061c
Content-Type: text/plain; charset="UTF-8"

Goedemiddag, kunnen we alsjeblieft praten?

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CACq-e2SsaA5MZWAzYE9wWLOmTxuVYwHy4DebmHPUJFqZ5mwihg%40mail.gmail.com.

--000000000000e7695e05db6e061c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Goedemiddag, kunnen we alsjeblieft praten?</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CACq-e2SsaA5MZWAzYE9wWLOmTxuVYwHy4DebmHPUJFqZ5mwihg%40=
mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.googl=
e.com/d/msgid/linux-ntb/CACq-e2SsaA5MZWAzYE9wWLOmTxuVYwHy4DebmHPUJFqZ5mwihg=
%40mail.gmail.com</a>.<br />

--000000000000e7695e05db6e061c--

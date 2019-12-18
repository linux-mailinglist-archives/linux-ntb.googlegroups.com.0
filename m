Return-Path: <linux-ntb+bncBCZ3V5MFGUILZBHJ54CRUBAYUGNNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A89A124B12
	for <lists+linux-ntb@lfdr.de>; Wed, 18 Dec 2019 16:14:06 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id r30sf1361001pgm.8
        for <lists+linux-ntb@lfdr.de>; Wed, 18 Dec 2019 07:14:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576682045; cv=pass;
        d=google.com; s=arc-20160816;
        b=WHrFFAqL2tp4LMDOhzHbb0ND9i1b/9eKbdssjIGLOk96MAAOTHGpyGNoG/plBAkexb
         BQmVfZE+rEQ2tULLnDCzWPHrEGws+OGiOjKtj1hCAhncP6pMUBb8Izjjpv8Hh4ClJmy5
         mkvb69mA29+J8JGyldkKR2kMi313RsclxoIXPnhRuz2y5zCFTCxfOysIBrS5og0z7jgY
         1/EWB/7wnHL9Xw3uDAk+u3pe2Q/5hDRJBMfWQb4lf3ehPlkwsNfK1O9tcTa1SkPbPZUJ
         b09hY9vZP8YB9GhczmpqcwjZy10I6JxUthFLjENkDPXo9TrB4IHExvwBND/uz9KzCtJV
         +ktw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :subject:message-id:date:from:reply-to:mime-version:sender
         :dkim-signature:dkim-signature;
        bh=67BXEm/cWcchxpcAVQ09MMn4HqRBZdA++KHUV04K6d0=;
        b=LkPkfdJJhOg+SMW0k2r7IAhqRYnyIMgEEGrtJ/jC+vjxbJDdYIQYO0FYxN4gbGJea1
         x+Ix1f/ehLEUELJ/nuFRDyNRqQqX1JWZfSsw1Cje9nlSto34NyJy3WbbjQH+bRQa+QTC
         G3AcaqqOGl27cXC18O4cjGmHeQMkyrHRLgGPXQXIvNdg3brDYduQvytDRXQQ9SKbHpjG
         Le7NN3U5lHXSfufhTHOB8kxVsqT9SAu8lKY97DQfgwWZOp/ovp9QaTHpxdR7a1w7ZJnS
         lt3tYhTDmxWfcgls0BQbUGz/d1fKsP6I6bdcbRaSaDaFUnrD4b8O4rez2PjGQNYk0Gb3
         SwXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RfaUJbE6;
       spf=pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=67BXEm/cWcchxpcAVQ09MMn4HqRBZdA++KHUV04K6d0=;
        b=X1VACcZ7BKBpb5ufBZU7ky03kJ+VL3Xg3lw1eSoQvxccv5N5C/nNIzF1hK12w410LO
         DOshHh/XFzAOT49O/bCNhMfRZOS0Yh/ykLw2hax/2vB6siyuLFteoWAQS2v2PrZgeGnK
         IKuUlYdnQ/RJ2bSF/jEX+TaMxDyxDgASWymuGccg+hR9LsYQpJB6nS9rpP9Fbt5CuN8l
         BQma+AjlAUsHjJy2z9Fc8maGZOtTXrrHS07YPluTAsUGIkEkUAJXcEqk7ZuDWP2jIyC3
         +/PlHP+0Y3vMwnveBaA6Rphn2Fq4EYg7jTzAwEiaF9Q+GMzL9fwHRDhFar+EuRhXvbbs
         fHuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=67BXEm/cWcchxpcAVQ09MMn4HqRBZdA++KHUV04K6d0=;
        b=b3JhzlmLcx8aojk/FIltUvm8sxqzJ78JYHULuXBZirKV8s4JQklHngZiI/eEQvh72J
         ORyQRH+kDa/y0pSMmFjD7HjVtoIbQq73NNk1gcVxwjmTedD+ij+HnTgyYs8fR0rcNpIH
         ytiLOinriaHngCp19bvGFlYok5X6p+t6Q9wSAv4GBAL4ebSnJrQ4q1xmtYPTXuQ/xPcs
         GK0uDZVkaeWya0x2ggsChPQi6z1AXYbEYkZb3UZaNwDuUV2GtF5FkmOX1ske4DTZAap9
         3zjQfnZKHOLnFU+emzo+h36/m4SxuimVeKXKBYodBj6mLYltBUeurhDoBlnPiO6ywm3a
         ikCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=67BXEm/cWcchxpcAVQ09MMn4HqRBZdA++KHUV04K6d0=;
        b=fom8aX93avAfwjPPoO4BjP2ONLKoKX+HsCx9SG2J29kh5fWDgWAnjOHI2G+8pVCtKy
         WtFMIYPIMAJGS8a226RyBljvS6IikZbMVdVobwWGt1n87Co/9LBYbOuCs+03n8T6lJ1C
         401+NCShX3cT8q1E7MNdEZhVef2HnWbYTvwixRpp/DeimYDqyFnz18dTI86M6YPI0ITs
         QA4zjiN1FQgnQiP3zJfhWcGN8J1aFqAJZlqA41NJPiiq77LHvccIAQIAzUjJ383urnig
         SpHrvC8fmz/t7NDgpKDigSt2dIpukwwqoQTK0ZPxMpI+TXIDkFFOU/A1Kp5qsZ9zD6mp
         rKAQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXxkCJywzr52V0BKjzMXa+iqUZnecAz3aSHKyIykvC2spMKvXh6
	zMHc69u4RwtB7KsB0c1brrg=
X-Google-Smtp-Source: APXvYqx+0pfdDnq7U9HvmOi0OIJdMqjcvbwuYOvW2I9thO99lFLb2cZek4XhHLjhwblZa31mHwiaiA==
X-Received: by 2002:a63:ff52:: with SMTP id s18mr3649107pgk.253.1576682044951;
        Wed, 18 Dec 2019 07:14:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:8c8c:: with SMTP id t12ls665828plo.9.gmail; Wed, 18
 Dec 2019 07:14:04 -0800 (PST)
X-Received: by 2002:a17:902:48:: with SMTP id 66mr3338007pla.182.1576682044428;
        Wed, 18 Dec 2019 07:14:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576682044; cv=none;
        d=google.com; s=arc-20160816;
        b=WckHmjQF2XfodHqZLnQMA6SKNT+Qba9pQrlqQwYZOqGCYMjfoVSmi4lwZ7PHSE1a4V
         uNb2KJz13soGTCYYGFSprBUz2+mkPsxo6UDPZVJbN73cCaNNaup96F47mdaWKzZMq17d
         PWhEgox1OVljf52yUtBPV4rNy4rT/LlOExuA/V9lgesEAqnMn/1ho3Z3M64zUQFDpT5V
         aqtLEAnzOkbM+s98QQ52TOj8rNr6tK2Niw5pjTTgF8M4qOpNFXVteRs/1Biu9Uj8KCEg
         J785J3jbhjx6ySzYvwfXTxswn3Smm/4hZ1HaNFa10u5JWayuFEGpoz+/TumvbqUmMs8W
         cjjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
         :mime-version:dkim-signature;
        bh=R9l9mbjTMtC+3agOxuj88vgGSGUSi1shzIvbtHPQHDA=;
        b=moOSMvXGstL6DsyzgaeUe6Mj3sZqb1ztDCX9apLjvV6uotZqh4ojpxPeIveuDoJIX1
         FVU8wPEnmaAGkfpFGXzkZL3i4XPsjnFQHOp3+OW6uu/6ipOc7ecBueCWxs0ggvsUG9wv
         tS8QKlc5W6afhhdqWh33dcupgET9NbR6yI3LbfW5RxPivMACcc3OCeftDhKVvQvRX72Z
         Ukaa5DRVXJLAckfEa5TrsrDZimbZKG68a9DrgiCro567DHWdicYJiDiVjdliqLYpcwRt
         Nzc31JJt3i4wxTFXFPlzOc9VGgI7HHq6j6+Zz6ZUuV3vY8qCRrfRyOKf4UVQvOOIqnPA
         ko/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RfaUJbE6;
       spf=pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id x13si109477pgt.3.2019.12.18.07.14.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2019 07:14:04 -0800 (PST)
Received-SPF: pass (google.com: domain of info.zennitbankplcnigerian@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id z193so2353332iof.1
        for <linux-ntb@googlegroups.com>; Wed, 18 Dec 2019 07:14:04 -0800 (PST)
X-Received: by 2002:a05:6638:950:: with SMTP id f16mr2789501jad.107.1576682043767;
 Wed, 18 Dec 2019 07:14:03 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:6603:0:0:0:0:0 with HTTP; Wed, 18 Dec 2019 07:14:03
 -0800 (PST)
Reply-To: dhl.expresscourier102156@outlook.fr
From: "MS. MARYANNA B. THOMASON" <info.zennitbankplcnigerian@gmail.com>
Date: Wed, 18 Dec 2019 16:14:03 +0100
Message-ID: <CABHzvr=Pq7-TqhY8TPvFCsr+5-DhDQy=XOg-TM13qqbFWeemfQ@mail.gmail.com>
Subject: =?UTF-8?Q?Urgent_delivery_Notification_of_your_ATM_MASTER_CARD?=
	=?UTF-8?Q?_Amount=2C=2415=2E800=E2=80=99000=E2=80=9900=2C?=
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: info.zennitbankplcnigerian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RfaUJbE6;       spf=pass
 (google.com: domain of info.zennitbankplcnigerian@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=info.zennitbankplcnigerian@gmail.com;
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

Attn Dear.

Urgent delivery Notification of your ATM MASTER CARD, Dhl-Benin is
ready for delivery of your ATM Master card worth $15.800=E2=80=99000=E2=80=
=9900, as
approved this morning, Date, 18/12/2019. Through the Intruction from
INTERNATIONAL MONETARY FUNDS, I.M.F official Directors.

REGISTRATION NO :EG58945
PARCEL NUMBER: 140479
Delivery Schuleded now,
Finally all we required from you is your ATM Card Proccessing Delivery
fees $19.00 only which you must send to this DHL service to enable us
dispatch the parcel to your destination today.

Here is our receiving payment details.
You are advised to send it Via Money Gram Service.

Receiver's Name--------Alan Ude
Country-------Benin Republic.
City/ Address--------Cotonou
Test Question--------In God
Answer-------We Trust
Amount------------$US19.00 only
Mtcn-------------
Sender's Name-------

Your delivery  ATM card worth $15.800=E2=80=99000=E2=80=9900,
Is Due for delivery to your address today upon confirmation of
required fee from you asap.

Call us on this phone number for any inquiry. +229 62819378
Awaiting your urgent response.

MS. MARYANNA B. THOMASON, Shipment director, DHL Express
Courier Company-Benin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CABHzvr%3DPq7-TqhY8TPvFCsr%2B5-DhDQy%3DXOg-TM13qqbFWeemfQ%40mail.=
gmail.com.

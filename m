Return-Path: <linux-ntb+bncBDF6JCH67IBBBH7YS6DQMGQEDTOKZTA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5363BF011
	for <lists+linux-ntb@lfdr.de>; Wed,  7 Jul 2021 21:10:24 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id hy7-20020a1709068a67b02904cdf8737a75sf949212ejc.9
        for <lists+linux-ntb@lfdr.de>; Wed, 07 Jul 2021 12:10:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625685024; cv=pass;
        d=google.com; s=arc-20160816;
        b=NqdAPKZduOoityCVvwUOmIOiHMdvyN/0yOmVqi8zZW8qVwOoCkMGSgBhsUTlhJwV+a
         wtcNUVwnfAE0Du6kVtFgMAdlvMMJwAuVI65jUPRzrJy9oBMqtTodPYmdE88bUUoO3wme
         8mAfRlf+5c5pvsBMNDl1OFiDiP+pfniVozv2/7YB0EVrP99SXkQVqsWcWVv6v1UAr1iY
         gNEh/Q8GUm/Uzf8/TkaVUBh/plfI+s7Xor9Sl0VWQEAZLGdxWT50hX0zrAe1rqWqVICm
         lCxTt689QUP6CsXh9LGVnqnw/q7k88aUDfQ2Dxc4vBWaw4zh5Q/zEkvZfbMB3hiYApyf
         af1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=SMlbh0uVztEEYHbVMtRnsNVLq1AM5JsTqOHPZ9RcocA=;
        b=dgMUxW+bQFVX7FyhPjPqy5TOsavqkkxndHELR4gCzVro/BPlthAwqheDmCULeKXZyv
         h+u8QsPpxGmtwFDmmRnjqA8W3s2ygLuQ+7+11fNDq/rKSzPBJyi79aE04BfN6tl1TmKj
         oj8CUFDIF6mgVfTbbWbz2ywZDozYPnJT9wuSNMPkE9gBXt+L3409Y7rH94rFlfVpurEr
         O0DEJ/qdXY2Ef716mlYYJau/BHR9DPUVSo6Dnm8DawF5jOjotiGJxuKY9ugOkUTU2iIj
         ZBmLKum9kRk0MI5vSwM2VhVqLEvXo9d1j6buES3B5LOQOLa7RVstYCsg88438YQZBmi5
         L6Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QWWOKdKN;
       spf=pass (google.com: domain of ameyicelestine@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=ameyicelestine@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMlbh0uVztEEYHbVMtRnsNVLq1AM5JsTqOHPZ9RcocA=;
        b=OKrVo6PZeuPwaCKJO/LooF8nbnAOgwcSL9zXCdwMMQgv62aEPnv5D0agi4X9BfS7hi
         R/gIcC7K0k2+bjnI/HCbyQW2AAZ4bWFZvwTmoujmFI6JUv6Obu8lkxzF5/3n1yJJVVBn
         aPVkxObhLDFtfblbly/y5oxkqyJUN+eb1n7m20Ghhw76QRkE+B3gOl6QD1bQ0m++M3pp
         IqAGJmSCJRWEKtfiv+Uz2B8edL2cJsHxE2A0gNGBpNPBtI50TlOJWQVAAQfE5hL7l9df
         UcEWgjh/MndsuTU2DznHcBVFJqZHNaVYJt8vz6wapNfGeSWiFfec/ge8t13b6DxLDBvF
         2wdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMlbh0uVztEEYHbVMtRnsNVLq1AM5JsTqOHPZ9RcocA=;
        b=rBvG8yLa53mTtLAi97wjUOcwxFXcl7I9FVRjf5k82l17g1otdCGLK8OBFkcNKZrODc
         zUax1ZCxgqXy8iuIB5d885jrdfec+d4LWc/yOBxtEX7rODH6wqghl+fOd5WJoYxqnfhJ
         +zXnG7ppKmi/J0MrWe3bJwrR7aeAS3UaZoiCbVpjWNu2DODKI4VfRKtf58VEF/DponfF
         rxhrf+zI3PSuklevF88kVvE7j82PubuOx84FXE76xpgZaHwZJBDnqUxCxmZi4C0YRTXs
         IqEhGxUFCbGs3D/B2p4z2I7X1oO7o5LIwuNK43Ukaveanzvnvo9vYQSiIVqZmCb7TRh7
         dNvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SMlbh0uVztEEYHbVMtRnsNVLq1AM5JsTqOHPZ9RcocA=;
        b=LGsHMUdiECTIuXsajICBoupt1UczPOUXY0oHEifv3p+gaUjLuznYGPQi5JQLYzFwWe
         fzBv7sdUBZCuilsmaAv1LgR8s1E6CRjHH9kg/MAfF/axJ/+Tuf5pp/nBMny0LRlrJP6s
         /atxZRHX1aGcJiMU5XQfqXhCFOoC72l+7bLyT9HnBnMPkPHytgOJQux/bYHcAC4pp76s
         i3E+L0fUf3kwKhxPyfvCkrPdEz3QopLzkWTO16QnUPpdoKps2vDyqGcJFQ6n7l4vJl8V
         eOZcg0ZXENRhN18I1r+YbLfmwJ/PORsIXWgRSF1wCAHsTJWQgBUEyf3K2o7MqnUhttsu
         kO5w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531ubs7c9L7qchMlN2UGIOCR+PS0Vx1XBY3plJ5DzVz5wmh7bqQh
	XjMNkFARp8hroZOy2QSOW90=
X-Google-Smtp-Source: ABdhPJxHGykBK2E/EePpb9B8QmcE+KMp0Fnkd/ZooKGimxsmRh2+Mfyir/wMlGzxE9yGKiKBdfyWaA==
X-Received: by 2002:a05:6402:27ce:: with SMTP id c14mr32144493ede.333.1625685024035;
        Wed, 07 Jul 2021 12:10:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:2547:: with SMTP id j7ls9551277ejb.2.gmail; Wed, 07
 Jul 2021 12:10:23 -0700 (PDT)
X-Received: by 2002:a17:907:da3:: with SMTP id go35mr24008285ejc.243.1625685023077;
        Wed, 07 Jul 2021 12:10:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625685023; cv=none;
        d=google.com; s=arc-20160816;
        b=me4b7maC6dBBJO4IgTraW8mF4DKcrckwU/HwrANSHLPdNxYzQGgIaB08Di8uDFMaGZ
         ByqvF9lS19re1A2oH5U8AIv53gr31BRUFzNZuLqo4UnWOyGGP2qpYi3L0F/7zUld5D4f
         o3Bp6gizyQk7WqI9FxGtO2ByNUkaa8fVafjEptq1lhlIpAJ233TYRj6FDDpZX/KViH85
         uj21/nM6yTQD/cnXt4U8kb8p/y6U50vxJngLmdevmZfQePx6ecTxSbl3dZb8ZLNt7pP2
         gBAb5aZPJ0iCH1U12Xsi8DFVdPuCIkJYdB7+Wr7FkHu0frzhFn3Yt9JcEQD0n8Qv7ICq
         YaMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=4xJt5fBKH9coVs4G118oSCNpXg1LcVS2cApUTRvl0UI=;
        b=eK+ri2gZ3HGM6saKr5z0vUARbDDUVKV90I2ExViplt+xTbhIRPPUeuEWJuPPgnsrde
         HvVR9OUx4K7nGe/zKYMAZ9PE6/KmHdTG3wVuxq7TjvpOx5rii46tKwD11AVifDN6FxH0
         VRowzCj1clXIFCIPbaf9IHWIYy/Akmy1PLDETQCPKrVJECCdwTzVk/Bdv99BsvGFfksd
         SLxtFXrnYmPpZWduSRyTO64d2R+rqQp5B60ewsw68QscgO54TrJQos7W1gsCiMrRp8Pz
         4SvsetaM5AZI2mJORLM258ZukCWwm3/3dyYzuXpvLzPS/+CGEaLRY9NZOVZQw53H16h/
         vNZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QWWOKdKN;
       spf=pass (google.com: domain of ameyicelestine@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=ameyicelestine@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com. [2a00:1450:4864:20::532])
        by gmr-mx.google.com with ESMTPS id be24si228319edb.1.2021.07.07.12.10.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 12:10:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ameyicelestine@gmail.com designates 2a00:1450:4864:20::532 as permitted sender) client-ip=2a00:1450:4864:20::532;
Received: by mail-ed1-x532.google.com with SMTP id v1so4841778edt.6
        for <linux-ntb@googlegroups.com>; Wed, 07 Jul 2021 12:10:23 -0700 (PDT)
X-Received: by 2002:a05:6402:193:: with SMTP id r19mr5237313edv.104.1625685022780;
 Wed, 07 Jul 2021 12:10:22 -0700 (PDT)
MIME-Version: 1.0
Reply-To: renderdonaldd@gmail.com
From: render donald <renderdonaldd@gmail.com>
Date: Wed, 7 Jul 2021 12:09:53 -0700
Message-ID: <CADbN5O2z+pvpE0hknRTFpzTB0aQGX93bfUfWB+7ixaL2_stXhg@mail.gmail.com>
Subject: HI
To: undisclosed-recipients:;
Content-Type: multipart/alternative; boundary="0000000000004cb12505c68d4a34"
X-Original-Sender: renderdonaldd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QWWOKdKN;       spf=pass
 (google.com: domain of ameyicelestine@gmail.com designates
 2a00:1450:4864:20::532 as permitted sender) smtp.mailfrom=ameyicelestine@gmail.com;
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

--0000000000004cb12505c68d4a34
Content-Type: text/plain; charset="UTF-8"

How are you doing today can we trust each other please kindly contact me i
have a good business proposal

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CADbN5O2z%2BpvpE0hknRTFpzTB0aQGX93bfUfWB%2B7ixaL2_stXhg%40mail.gmail.com.

--0000000000004cb12505c68d4a34
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">How are you doing today can we trust each other please kin=
dly contact me i have a good business proposal</div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/CADbN5O2z%2BpvpE0hknRTFpzTB0aQGX93bfUfWB%2B7ixaL2_stXh=
g%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.g=
oogle.com/d/msgid/linux-ntb/CADbN5O2z%2BpvpE0hknRTFpzTB0aQGX93bfUfWB%2B7ixa=
L2_stXhg%40mail.gmail.com</a>.<br />

--0000000000004cb12505c68d4a34--

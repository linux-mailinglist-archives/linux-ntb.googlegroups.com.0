Return-Path: <linux-ntb+bncBCS4BDN7YUCRBLFO37VQKGQEFT7FMJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E8182AF018
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 19:02:37 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id k185sf7397833oih.1
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Sep 2019 10:02:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568134956; cv=pass;
        d=google.com; s=arc-20160816;
        b=mH3Hbr3JHB3geFBeYceWKijAhKuOgsNBGARQO7mVsMD9YXdWinx+zavlAlv14vtLmN
         zZpG7B9IJFC+wIH9A//fXdLW2DAi87VSIbxHAT6F1bxs+r2mqVK5LypUquBt0mdpn1JZ
         fae3L24e+hqwl+kvqVFFi9MHbWDPcOdl3EC5seNjkrL7/gULykRiZstPTaFsQ1iZuSly
         csa/HzWu/tU4ZmON1cJ+RWOy55+3rTvxjH/POGG56ZL/Be9MC+qVqNDqnQr+6yMd737F
         rVu/WuEGZRZnUgGA6hGwkVo11MbKsRD6bpfjoEHHS569TYwBjLorwDthO7cLsP8lnaHp
         ZV2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=SnygJWdki46/j6eXbtvPeQ4gy6t8fpqyCGG2Zjqh+vg=;
        b=NI6mUhn0Yuf4zJCsYvQiwR6nX2aHCsPkX3MRYjhk1vWmDOZwrhP/G6dGGD/uLImQaM
         5XXs1v9gmHe9PZibkgoUzASP8/5cz97S+FCBw7ESjjfIuZz3wiC0s8VveM+sBKjaPx9m
         j3T4Fg179mabRf/0LbLOgvT5I8C/X3eX9vPF7G20p/Ea4uzwveVB+8Q8pGsGCC2rWiF8
         1QFQQeaYMx5jm20nG5uxXHW1BtAoAF+W08lOXh6j4U+lzBqbreixlJ6tA0K4Gn+PB0Qc
         TzqgcJ9DbwMkL553sSv79BHm05aeZXmm1ix8Ne+FIi548ujg4UOFNvTvAxTpizQ4AXKJ
         oXmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="jyrVkq/p";
       spf=neutral (google.com: 2607:f8b0:4864:20::d41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnygJWdki46/j6eXbtvPeQ4gy6t8fpqyCGG2Zjqh+vg=;
        b=srwygI+3nISGXxvrWi+ebD0EL9aFYlSL+UPbdW7p6BLBiUEaOltLFjG1InkQvaPkv2
         O+VsQuLeD1k7TxOyPvsR0RzvbhLeOcxHK8S00b9WFBRNmy4gQQZSHQkt99lj53tkbWoc
         pKp0/6N9yxY34XpiVSoKW9PPBFsxi9aQRDVcmlP6i/PV9p4Cd9WzomBkBzyUDr610NaV
         g/2IyFz7EPpiJlweVB2PDE+kgrW/j7LKeut1TSq640qTGYnfb+JtOBKCR69FwS86m7SZ
         tOFCwuQKdUHIKa9sNR6ScrFBEO6kIRn80hAivS+Lfa29vSDg4zX/HljUHjbwM5nYVlmv
         xxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnygJWdki46/j6eXbtvPeQ4gy6t8fpqyCGG2Zjqh+vg=;
        b=ARbfse8B4pYz+F2bIMXYlcFwQwVFAED3UxKB5//88SBgUdEAzSEuIE3XE63DuPUxhS
         cVUOgmKlqw0fHzlGMAYuCZJr0FC1GS52jhJ6/rxJcXSGHaENr3ebVgOP/Mjq76nEBJeb
         9Vk+kLkixX48/eDPSggFw6mRtLw6bcR/MBczWCvMLD1bHvzmq6cN2GgfM82elGoNermr
         jq3o3VFiKMjWGx23Rl1Go1W4M3DMZPjFO7LTl4dZSzCT/FdeuvHJJPCNilKW6N/sN0Ne
         cMf4unMlZbziSvZW6OCk1YwTD2jtEz7BOaPP/i/RPsGJNjlGlxjEV1iyfPR4oKIwPO+U
         gung==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVA4bByIzd6j34drqjdwtQpq+itiSpz5uWpZ8/FynYmfMqzuGwg
	+UAL0fac7YaCCHLqHnHB07w=
X-Google-Smtp-Source: APXvYqzQ+Mf+PKQHj/7RuCJZu58aDXHA9Iy0QORW9dbfUnCwlzwDAf8GzbeVEHVpjlyOsAOuxgEP4w==
X-Received: by 2002:a9d:441:: with SMTP id 59mr4333905otc.355.1568134956059;
        Tue, 10 Sep 2019 10:02:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:200d:: with SMTP id e13ls4209516otp.2.gmail; Tue,
 10 Sep 2019 10:02:35 -0700 (PDT)
X-Received: by 2002:a9d:5e81:: with SMTP id f1mr6910625otl.139.1568134955655;
        Tue, 10 Sep 2019 10:02:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568134955; cv=none;
        d=google.com; s=arc-20160816;
        b=SWhh1KDP8ahzy++k9aMhKJIWze5xiZTjgHTrGQBUeau1tru/N03ZHspn89Z6jue6o+
         KI0NGZmZDMFhd/cbbD+s6oDOnnUWOZUg2OzHYQWihU2g9Yru9Wt3O4CgsN9+ldAB4Jmu
         cVDuwFRZX1NODsGAc1n2f+nj37qHKLcvdKkdHGE3/0xP/P1rMfHejAEerIYyV/WJdo8F
         GHUJIaEOrqgtqnl7SMOtgfQg1uNt7FdSU7wLT26Px+N/s4tiBRCwMKtHfd0L2S1Bc4AW
         bRIXrRxJcU6zSYhZ7A9udL6jYb6t02CK/piFHWTwuLSxaKtNLDmACGyPI3eZ7QZXBx+m
         Hfww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yHtCrm1vpXjKX4N1mnKNL5adU51DyAdSJlvxQv4V/NA=;
        b=bK8I3YabhA9A7NvYzAXMGEc6imqHbBGlLpOOK1oul/n3vNomV1MuHD/Q0fvDN9Sas3
         sO9LkqFteiKb9ckkPsiMJl0gp8TMzq/5jmNU16KaWUME67liE3zokA6xt5mX9BH1xS0L
         ftYWKiB3LapaAzvFWvmthx5BSS18/uvh8pnMivsfs87K/XjjVAf9IIKRC+xnU9DrB6BX
         xU9L2nh6t6HD3dGWlz2Cma5A67qrSWdUc4ZiCU3zy1PPhYiyrDoJLg1CDjr4Kq+T1IoY
         gF8h+yhHWv/Gkn9Nw0pEhA8pzVu/mzYBmoH6QIEiegInWOG/P3i6YNbT5RdcxXYMmPKU
         Zvcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="jyrVkq/p";
       spf=neutral (google.com: 2607:f8b0:4864:20::d41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id w131si779926oif.2.2019.09.10.10.02.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Sep 2019 10:02:35 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d41 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id j4so39166698iog.11
        for <linux-ntb@googlegroups.com>; Tue, 10 Sep 2019 10:02:35 -0700 (PDT)
X-Received: by 2002:a6b:ac85:: with SMTP id v127mr4880488ioe.97.1568134955308;
 Tue, 10 Sep 2019 10:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190818185349.15275-1-colin.king@canonical.com>
In-Reply-To: <20190818185349.15275-1-colin.king@canonical.com>
From: Jon Mason <jdmason@kudzu.us>
Date: Tue, 10 Sep 2019 18:02:27 +0100
Message-ID: <CAPoiz9z-e_oK2urbkWcoa2qqybAFbR54SR7gGzU1EA19zrxc=A@mail.gmail.com>
Subject: Re: [PATCH] NTB: ntb_transport: remove redundant assignment to rc
To: Colin King <colin.king@canonical.com>
Cc: Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb <linux-ntb@googlegroups.com>, kernel-janitors@vger.kernel.org, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="jyrVkq/p";       spf=neutral (google.com: 2607:f8b0:4864:20::d41 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Sun, Aug 18, 2019 at 7:53 PM Colin King <colin.king@canonical.com> wrote:
>
> From: Colin Ian King <colin.king@canonical.com>
>
> Variable rc is initialized to a value that is never read and it
> is re-assigned later. The initialization is redundant and can be
> removed.

Applied to ntb-next, thanks

> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/ntb/ntb_transport.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
> index 40c90ca10729..00a5d5764993 100644
> --- a/drivers/ntb/ntb_transport.c
> +++ b/drivers/ntb/ntb_transport.c
> @@ -292,7 +292,7 @@ static int ntb_transport_bus_match(struct device *dev,
>  static int ntb_transport_bus_probe(struct device *dev)
>  {
>         const struct ntb_transport_client *client;
> -       int rc = -EINVAL;
> +       int rc;
>
>         get_device(dev);
>
> --
> 2.20.1
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9z-e_oK2urbkWcoa2qqybAFbR54SR7gGzU1EA19zrxc%3DA%40mail.gmail.com.
